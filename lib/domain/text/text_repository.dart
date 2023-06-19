import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/text.dart';

/// テキストリポジトリプロバイダー
final textRepositoryProvider = Provider<TextRepository>(
  (_) => throw UnimplementedError(),
);

/// テキストリポジトリインターフェース
abstract interface class TextRepository {
  /// 指定テキストを要約する
  Future<Text> summarizeText({required Text text});
}
