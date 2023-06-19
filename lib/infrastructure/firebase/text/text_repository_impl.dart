import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/domain/text/entity/text.dart';
import 'package:palm_sample/domain/text/text_repository.dart';
import 'package:palm_sample/infrastructure/firebase/text/document/text_document.dart';

import '../firebase_providers.dart';

/// text_documents コレクション参照プロバイダー
final textDocumentsCollectionRefProvider =
    Provider<CollectionReference<TextDocument>>(
  (ref) => ref
      .watch(firebaseFirestoreProvider)
      .collection('text_documents')
      .withConverter<TextDocument>(
        fromFirestore: (snapshot, _) => TextDocument.fromJson(snapshot.data()!),
        toFirestore: (textDoc, options) => textDoc.toJson(),
      ),
);

/// Firebase テキストリポジトリ
class TextRepositoryImpl implements TextRepository {
  TextRepositoryImpl({required this.collectionRef});
  final CollectionReference<TextDocument> collectionRef;

  /// 指定テキストを要約する
  @override
  Future<Text> summarizeText({required Text text}) async {
    try {
      final doc = await collectionRef.add(
        TextDocument(status: {}, text: text.text, summary: ''),
      );
      final snapshot = await doc.snapshots().first;
      final summaryText = snapshot.data()!;
      return Text(
        id: doc.id,
        text: summaryText.text,
        summary: summaryText.summary,
      );
    } on FirebaseException catch (e) {
      throw ('Firestore の追加処理でエラーが発生しました: ${e.code}');
    } catch (e) {
      throw ('予期しないエラーが発生しました: $e');
    }
  }
}
