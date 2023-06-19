import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_document.freezed.dart';
part 'text_document.g.dart';

@freezed
class TextDocument with _$TextDocument {
  const factory TextDocument({
    required Map<String, dynamic> status,
    required String summary,
    required String text,
  }) = _TextDocument;

  factory TextDocument.fromJson(Map<String, dynamic> json) =>
      _$TextDocumentFromJson(json);
}
