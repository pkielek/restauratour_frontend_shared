// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Jwt {
  String get jwtToken => throw _privateConstructorUsedError;
  bool get loggedOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JwtCopyWith<Jwt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtCopyWith<$Res> {
  factory $JwtCopyWith(Jwt value, $Res Function(Jwt) then) =
      _$JwtCopyWithImpl<$Res, Jwt>;
  @useResult
  $Res call({String jwtToken, bool loggedOut});
}

/// @nodoc
class _$JwtCopyWithImpl<$Res, $Val extends Jwt> implements $JwtCopyWith<$Res> {
  _$JwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtToken = null,
    Object? loggedOut = null,
  }) {
    return _then(_value.copyWith(
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      loggedOut: null == loggedOut
          ? _value.loggedOut
          : loggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtImplCopyWith<$Res> implements $JwtCopyWith<$Res> {
  factory _$$JwtImplCopyWith(_$JwtImpl value, $Res Function(_$JwtImpl) then) =
      __$$JwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwtToken, bool loggedOut});
}

/// @nodoc
class __$$JwtImplCopyWithImpl<$Res> extends _$JwtCopyWithImpl<$Res, _$JwtImpl>
    implements _$$JwtImplCopyWith<$Res> {
  __$$JwtImplCopyWithImpl(_$JwtImpl _value, $Res Function(_$JwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtToken = null,
    Object? loggedOut = null,
  }) {
    return _then(_$JwtImpl(
      null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == loggedOut
          ? _value.loggedOut
          : loggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$JwtImpl extends _Jwt {
  _$JwtImpl(this.jwtToken, [this.loggedOut = false]) : super._();

  @override
  final String jwtToken;
  @override
  @JsonKey()
  final bool loggedOut;

  @override
  String toString() {
    return 'Jwt(jwtToken: $jwtToken, loggedOut: $loggedOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtImpl &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.loggedOut, loggedOut) ||
                other.loggedOut == loggedOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jwtToken, loggedOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtImplCopyWith<_$JwtImpl> get copyWith =>
      __$$JwtImplCopyWithImpl<_$JwtImpl>(this, _$identity);
}

abstract class _Jwt extends Jwt {
  factory _Jwt(final String jwtToken, [final bool loggedOut]) = _$JwtImpl;
  _Jwt._() : super._();

  @override
  String get jwtToken;
  @override
  bool get loggedOut;
  @override
  @JsonKey(ignore: true)
  _$$JwtImplCopyWith<_$JwtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}