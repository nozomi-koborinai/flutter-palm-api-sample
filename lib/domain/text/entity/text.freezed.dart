// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Text {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res, Text>;
  @useResult
  $Res call({String id, String text, String summary});
}

/// @nodoc
class _$TextCopyWithImpl<$Res, $Val extends Text>
    implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$$_TextCopyWith(_$_Text value, $Res Function(_$_Text) then) =
      __$$_TextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, String summary});
}

/// @nodoc
class __$$_TextCopyWithImpl<$Res> extends _$TextCopyWithImpl<$Res, _$_Text>
    implements _$$_TextCopyWith<$Res> {
  __$$_TextCopyWithImpl(_$_Text _value, $Res Function(_$_Text) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? summary = null,
  }) {
    return _then(_$_Text(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Text implements _Text {
  const _$_Text({required this.id, required this.text, required this.summary});

  @override
  final String id;
  @override
  final String text;
  @override
  final String summary;

  @override
  String toString() {
    return 'Text(id: $id, text: $text, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Text &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextCopyWith<_$_Text> get copyWith =>
      __$$_TextCopyWithImpl<_$_Text>(this, _$identity);
}

abstract class _Text implements Text {
  const factory _Text(
      {required final String id,
      required final String text,
      required final String summary}) = _$_Text;

  @override
  String get id;
  @override
  String get text;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_TextCopyWith<_$_Text> get copyWith => throw _privateConstructorUsedError;
}
