import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_sample/application/state/summary_text_provider.dart';
import 'package:palm_sample/domain/text/entity/text.dart';

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
  Future<void> summarizeText({required String text}) async {
    ref.watch(overlayLoadingProvider.notifier).update((_) => true);
    try {
      final summaryText = await ref
          .read(textRepositoryProvider)
          .summarizeText(text: Text(id: '', text: text, summary: ''));
      ref
          .watch(summaryTextStateProvider.notifier)
          .update((_) => summaryText.summary);
    } catch (e) {
      rethrow;
    } finally {
      ref.watch(overlayLoadingProvider.notifier).update((_) => false);
    }
  }
}
