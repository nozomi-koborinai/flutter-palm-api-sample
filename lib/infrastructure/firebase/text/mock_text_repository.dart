import '../../../domain/text/text_repository.dart';

class MockTextRepository implements TextRepository {
  @override
  Future<String> summarizeText({required String targetText}) async {
    await Future.delayed(const Duration(seconds: 2));
    return '要約後の$targetText';
  }
}
