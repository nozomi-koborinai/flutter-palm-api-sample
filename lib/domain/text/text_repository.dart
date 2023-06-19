import 'package:flutter_riverpod/flutter_riverpod.dart';

/// テキストリポジトリプロバイダー
final summaryRepositoryProvider = Provider<TextRepository>(
  (_) => throw UnimplementedError(),
);

/// テキストリポジトリインターフェース
abstract interface class TextRepository {
  /// 指定テキストを要約する
  Future<String> summarizeText({required String targetText});
}
