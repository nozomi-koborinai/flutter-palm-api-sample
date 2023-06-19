import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/application/state/summary_text_provider.dart';

import '../../domain/text/text_repository.dart';
import '../state/overlay_loading_provider.dart';

/// 要約ユースケースプロバイダー
final summaryUsecaseProvider = Provider<SummaryUsecase>(
  SummaryUsecase.new,
);

/// 要約ユースケース
class SummaryUsecase {
  SummaryUsecase(this.ref);

  final Ref ref;

  /// 指定テキストを要約する
  Future<void> summarizeText({required String targetText}) async {
    ref.watch(overlayLoadingProvider.notifier).update((_) => true);
    try {
      final summaryText = await ref
          .read(summaryRepositoryProvider)
          .summarizeText(targetText: targetText);
      ref.watch(summaryTextStateProvider.notifier).update((_) => summaryText);
    } catch (e) {
      rethrow;
    } finally {
      ref.watch(overlayLoadingProvider.notifier).update((_) => false);
    }
  }
}
