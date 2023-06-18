// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Summary {
  String get id => throw _privateConstructorUsedError;
  String get beforeText => throw _privateConstructorUsedError;
  String get afterText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call({String id, String beforeText, String afterText});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beforeText = null,
    Object? afterText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      beforeText: null == beforeText
          ? _value.beforeText
          : beforeText // ignore: cast_nullable_to_non_nullable
              as String,
      afterText: null == afterText
          ? _value.afterText
          : afterText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$_SummaryCopyWith(
          _$_Summary value, $Res Function(_$_Summary) then) =
      __$$_SummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String beforeText, String afterText});
}

/// @nodoc
class __$$_SummaryCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$_Summary>
    implements _$$_SummaryCopyWith<$Res> {
  __$$_SummaryCopyWithImpl(_$_Summary _value, $Res Function(_$_Summary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beforeText = null,
    Object? afterText = null,
  }) {
    return _then(_$_Summary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      beforeText: null == beforeText
          ? _value.beforeText
          : beforeText // ignore: cast_nullable_to_non_nullable
              as String,
      afterText: null == afterText
          ? _value.afterText
          : afterText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Summary implements _Summary {
  const _$_Summary(
      {required this.id, required this.beforeText, required this.afterText});

  @override
  final String id;
  @override
  final String beforeText;
  @override
  final String afterText;

  @override
  String toString() {
    return 'Summary(id: $id, beforeText: $beforeText, afterText: $afterText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Summary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beforeText, beforeText) ||
                other.beforeText == beforeText) &&
            (identical(other.afterText, afterText) ||
                other.afterText == afterText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, beforeText, afterText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      __$$_SummaryCopyWithImpl<_$_Summary>(this, _$identity);
}

abstract class _Summary implements Summary {
  const factory _Summary(
      {required final String id,
      required final String beforeText,
      required final String afterText}) = _$_Summary;

  @override
  String get id;
  @override
  String get beforeText;
  @override
  String get afterText;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      throw _privateConstructorUsedError;
}
