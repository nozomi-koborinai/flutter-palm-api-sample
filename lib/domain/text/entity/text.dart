import 'package:freezed_annotation/freezed_annotation.dart';

part 'text.freezed.dart';

@freezed
class Text with _$Text {
  const factory Text({
    required String id,
    required String text,
    required String summary,
  }) = _Text;
}
