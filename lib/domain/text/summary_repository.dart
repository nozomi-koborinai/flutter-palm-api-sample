import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 要約リポジトリプロバイダー
final summaryRepositoryProvider = Provider<SummaryRepository>(
  (_) => throw UnimplementedError(),
);

/// 要約リポジトリインターフェース
abstract interface class SummaryRepository {
  /// 指定テキストを要約する
  Future<String> summarizeText({required String targetText});
}
