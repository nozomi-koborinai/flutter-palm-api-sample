import 'dart:async';

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
      // 指定テキストを Firestore.text_documents コレクションへ追加する
      final doc = await collectionRef.add(
        TextDocument(status: {}, text: text.text, summary: ''),
      );

      // 指定したテキストが要約されるまで待つ
      final summaryText = await fetchSummary(documentId: doc.id);

      return Text(
        id: doc.id,
        text: summaryText?.data()?.text ?? '',
        summary: summaryText?.data()?.summary ?? '',
      );
    } on FirebaseException catch (e) {
      throw ('Firestore の追加処理でエラーが発生しました: ${e.code}');
    } catch (e) {
      throw ('予期しないエラーが発生しました: $e');
    }
  }

  /// 指定テキストの要約結果を取得する
  /// 指定したドキュメントの更新が終了するのを待ち続ける
  Future<DocumentSnapshot<TextDocument>?> fetchSummary({
    required String documentId,
  }) async {
    final snapshots = collectionRef.doc(documentId).snapshots();
    const timeout = Duration(minutes: 1); // 監視のタイムアウトは 60 秒に設定する
    await for (final snapshot in snapshots.timeout(timeout)) {
      if (snapshot.data()?.summary != '') {
        return snapshot;
      }
    }

    // タイムアウトした場合は null を返却する
    return null;
  }
}
