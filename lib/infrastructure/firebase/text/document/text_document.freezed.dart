// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextDocument _$TextDocumentFromJson(Map<String, dynamic> json) {
  return _TextDocument.fromJson(json);
}

/// @nodoc
mixin _$TextDocument {
  Map<String, dynamic> get status => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDocumentCopyWith<TextDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDocumentCopyWith<$Res> {
  factory $TextDocumentCopyWith(
          TextDocument value, $Res Function(TextDocument) then) =
      _$TextDocumentCopyWithImpl<$Res, TextDocument>;
  @useResult
  $Res call({Map<String, dynamic> status, String summary, String text});
}

/// @nodoc
class _$TextDocumentCopyWithImpl<$Res, $Val extends TextDocument>
    implements $TextDocumentCopyWith<$Res> {
  _$TextDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? summary = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextDocumentCopyWith<$Res>
    implements $TextDocumentCopyWith<$Res> {
  factory _$$_TextDocumentCopyWith(
          _$_TextDocument value, $Res Function(_$_TextDocument) then) =
      __$$_TextDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> status, String summary, String text});
}

/// @nodoc
class __$$_TextDocumentCopyWithImpl<$Res>
    extends _$TextDocumentCopyWithImpl<$Res, _$_TextDocument>
    implements _$$_TextDocumentCopyWith<$Res> {
  __$$_TextDocumentCopyWithImpl(
      _$_TextDocument _value, $Res Function(_$_TextDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? summary = null,
    Object? text = null,
  }) {
    return _then(_$_TextDocument(
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextDocument with DiagnosticableTreeMixin implements _TextDocument {
  const _$_TextDocument(
      {required final Map<String, dynamic> status,
      required this.summary,
      required this.text})
      : _status = status;

  factory _$_TextDocument.fromJson(Map<String, dynamic> json) =>
      _$$_TextDocumentFromJson(json);

  final Map<String, dynamic> _status;
  @override
  Map<String, dynamic> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  @override
  final String summary;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'text_documents(status: $status, summary: $summary, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'text_documents'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextDocument &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_status), summary, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextDocumentCopyWith<_$_TextDocument> get copyWith =>
      __$$_TextDocumentCopyWithImpl<_$_TextDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextDocumentToJson(
      this,
    );
  }
}

abstract class _TextDocument implements TextDocument {
  const factory _TextDocument(
      {required final Map<String, dynamic> status,
      required final String summary,
      required final String text}) = _$_TextDocument;

  factory _TextDocument.fromJson(Map<String, dynamic> json) =
      _$_TextDocument.fromJson;

  @override
  Map<String, dynamic> get status;
  @override
  String get summary;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextDocumentCopyWith<_$_TextDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
