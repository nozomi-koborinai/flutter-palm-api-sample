import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary.freezed.dart';

@freezed
class Summary with _$Summary {
  const factory Summary({
    required String id,
    required String beforeText,
    required String afterText,
  }) = _Summary;
}
