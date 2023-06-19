// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextDocument _$$_TextDocumentFromJson(Map<String, dynamic> json) =>
    _$_TextDocument(
      status: json['status'] as Map<String, dynamic>,
      summary: json['summary'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_TextDocumentToJson(_$_TextDocument instance) =>
    <String, dynamic>{
      'status': instance.status,
      'summary': instance.summary,
      'text': instance.text,
    };
