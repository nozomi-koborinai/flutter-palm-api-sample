import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 要約テキストを監視するプロバイダー
final summaryTextStateProvider = StateProvider<String>(
  (_) => '',
);
