import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/text/entity/text.dart';

/// 要約テキストを監視するプロバイダー
final summaryTextStateProvider = StateProvider<Text>(
  (_) => const Text(id: '', text: '', summary: ''),
);
