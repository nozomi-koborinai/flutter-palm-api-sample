import '../../../domain/text/entity/text.dart';
import '../../../domain/text/text_repository.dart';

class MockTextRepository implements TextRepository {
  @override
  Future<Text> summarizeText({required Text text}) async {
    await Future.delayed(const Duration(seconds: 2));
    return text.copyWith(summary: '要約後の${text.text}');
  }
}
