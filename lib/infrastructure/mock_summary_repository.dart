import 'package:palm_sample/domain/summary/summary_repository.dart';

class MockSummaryRepository implements SummaryRepository {
  @override
  Future<String> summarizeText({required String targetText}) async {
    await Future.delayed(const Duration(seconds: 2));
    return '要約後の$targetText';
  }
}
