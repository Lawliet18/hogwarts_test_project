// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_guess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotalGuess _$TotalGuessFromJson(Map<String, dynamic> json) {
  return _TotalGuess.fromJson(json);
}

/// @nodoc
mixin _$TotalGuess {
  int get success => throw _privateConstructorUsedError;
  int get failure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalGuessCopyWith<TotalGuess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalGuessCopyWith<$Res> {
  factory $TotalGuessCopyWith(
          TotalGuess value, $Res Function(TotalGuess) then) =
      _$TotalGuessCopyWithImpl<$Res, TotalGuess>;
  @useResult
  $Res call({int success, int failure});
}

/// @nodoc
class _$TotalGuessCopyWithImpl<$Res, $Val extends TotalGuess>
    implements $TotalGuessCopyWith<$Res> {
  _$TotalGuessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalGuessImplCopyWith<$Res>
    implements $TotalGuessCopyWith<$Res> {
  factory _$$TotalGuessImplCopyWith(
          _$TotalGuessImpl value, $Res Function(_$TotalGuessImpl) then) =
      __$$TotalGuessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int success, int failure});
}

/// @nodoc
class __$$TotalGuessImplCopyWithImpl<$Res>
    extends _$TotalGuessCopyWithImpl<$Res, _$TotalGuessImpl>
    implements _$$TotalGuessImplCopyWith<$Res> {
  __$$TotalGuessImplCopyWithImpl(
      _$TotalGuessImpl _value, $Res Function(_$TotalGuessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? failure = null,
  }) {
    return _then(_$TotalGuessImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalGuessImpl implements _TotalGuess {
  const _$TotalGuessImpl({required this.success, required this.failure});

  factory _$TotalGuessImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalGuessImplFromJson(json);

  @override
  final int success;
  @override
  final int failure;

  @override
  String toString() {
    return 'TotalGuess(success: $success, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalGuessImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalGuessImplCopyWith<_$TotalGuessImpl> get copyWith =>
      __$$TotalGuessImplCopyWithImpl<_$TotalGuessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalGuessImplToJson(
      this,
    );
  }
}

abstract class _TotalGuess implements TotalGuess {
  const factory _TotalGuess(
      {required final int success,
      required final int failure}) = _$TotalGuessImpl;

  factory _TotalGuess.fromJson(Map<String, dynamic> json) =
      _$TotalGuessImpl.fromJson;

  @override
  int get success;
  @override
  int get failure;
  @override
  @JsonKey(ignore: true)
  _$$TotalGuessImplCopyWith<_$TotalGuessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
