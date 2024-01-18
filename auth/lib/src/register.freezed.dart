// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterInfo _$RegisterInfoFromJson(Map<String, dynamic> json) {
  return _RegisterInfo.fromJson(json);
}

/// @nodoc
mixin _$RegisterInfo {
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get accessKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterInfoCopyWith<RegisterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterInfoCopyWith<$Res> {
  factory $RegisterInfoCopyWith(
          RegisterInfo value, $Res Function(RegisterInfo) then) =
      _$RegisterInfoCopyWithImpl<$Res, RegisterInfo>;
  @useResult
  $Res call(
      {String password,
      String confirmPassword,
      String? email,
      String? name,
      String? accessKey});
}

/// @nodoc
class _$RegisterInfoCopyWithImpl<$Res, $Val extends RegisterInfo>
    implements $RegisterInfoCopyWith<$Res> {
  _$RegisterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? accessKey = freezed,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterInfoImplCopyWith<$Res>
    implements $RegisterInfoCopyWith<$Res> {
  factory _$$RegisterInfoImplCopyWith(
          _$RegisterInfoImpl value, $Res Function(_$RegisterInfoImpl) then) =
      __$$RegisterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String password,
      String confirmPassword,
      String? email,
      String? name,
      String? accessKey});
}

/// @nodoc
class __$$RegisterInfoImplCopyWithImpl<$Res>
    extends _$RegisterInfoCopyWithImpl<$Res, _$RegisterInfoImpl>
    implements _$$RegisterInfoImplCopyWith<$Res> {
  __$$RegisterInfoImplCopyWithImpl(
      _$RegisterInfoImpl _value, $Res Function(_$RegisterInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? accessKey = freezed,
  }) {
    return _then(_$RegisterInfoImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterInfoImpl implements _RegisterInfo {
  _$RegisterInfoImpl(
      {required this.password,
      required this.confirmPassword,
      this.email = null,
      this.name = null,
      this.accessKey = null});

  factory _$RegisterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterInfoImplFromJson(json);

  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? accessKey;

  @override
  String toString() {
    return 'RegisterInfo(password: $password, confirmPassword: $confirmPassword, email: $email, name: $name, accessKey: $accessKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterInfoImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, password, confirmPassword, email, name, accessKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterInfoImplCopyWith<_$RegisterInfoImpl> get copyWith =>
      __$$RegisterInfoImplCopyWithImpl<_$RegisterInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterInfoImplToJson(
      this,
    );
  }
}

abstract class _RegisterInfo implements RegisterInfo {
  factory _RegisterInfo(
      {required final String password,
      required final String confirmPassword,
      final String? email,
      final String? name,
      final String? accessKey}) = _$RegisterInfoImpl;

  factory _RegisterInfo.fromJson(Map<String, dynamic> json) =
      _$RegisterInfoImpl.fromJson;

  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get accessKey;
  @override
  @JsonKey(ignore: true)
  _$$RegisterInfoImplCopyWith<_$RegisterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
