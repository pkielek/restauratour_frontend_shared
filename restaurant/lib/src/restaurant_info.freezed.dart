// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantFlag _$RestaurantFlagFromJson(Map<String, dynamic> json) {
  return _RestaurantFlag.fromJson(json);
}

/// @nodoc
mixin _$RestaurantFlag {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get setting => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantFlagCopyWith<RestaurantFlag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFlagCopyWith<$Res> {
  factory $RestaurantFlagCopyWith(
          RestaurantFlag value, $Res Function(RestaurantFlag) then) =
      _$RestaurantFlagCopyWithImpl<$Res, RestaurantFlag>;
  @useResult
  $Res call({int id, String name, bool setting, String? description});
}

/// @nodoc
class _$RestaurantFlagCopyWithImpl<$Res, $Val extends RestaurantFlag>
    implements $RestaurantFlagCopyWith<$Res> {
  _$RestaurantFlagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? setting = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      setting: null == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantFlagImplCopyWith<$Res>
    implements $RestaurantFlagCopyWith<$Res> {
  factory _$$RestaurantFlagImplCopyWith(_$RestaurantFlagImpl value,
          $Res Function(_$RestaurantFlagImpl) then) =
      __$$RestaurantFlagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, bool setting, String? description});
}

/// @nodoc
class __$$RestaurantFlagImplCopyWithImpl<$Res>
    extends _$RestaurantFlagCopyWithImpl<$Res, _$RestaurantFlagImpl>
    implements _$$RestaurantFlagImplCopyWith<$Res> {
  __$$RestaurantFlagImplCopyWithImpl(
      _$RestaurantFlagImpl _value, $Res Function(_$RestaurantFlagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? setting = null,
    Object? description = freezed,
  }) {
    return _then(_$RestaurantFlagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      setting: null == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantFlagImpl implements _RestaurantFlag {
  _$RestaurantFlagImpl(
      {required this.id,
      required this.name,
      required this.setting,
      this.description = ""});

  factory _$RestaurantFlagImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantFlagImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool setting;
  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'RestaurantFlag(id: $id, name: $name, setting: $setting, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantFlagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.setting, setting) || other.setting == setting) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, setting, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantFlagImplCopyWith<_$RestaurantFlagImpl> get copyWith =>
      __$$RestaurantFlagImplCopyWithImpl<_$RestaurantFlagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantFlagImplToJson(
      this,
    );
  }
}

abstract class _RestaurantFlag implements RestaurantFlag {
  factory _RestaurantFlag(
      {required final int id,
      required final String name,
      required final bool setting,
      final String? description}) = _$RestaurantFlagImpl;

  factory _RestaurantFlag.fromJson(Map<String, dynamic> json) =
      _$RestaurantFlagImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get setting;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantFlagImplCopyWith<_$RestaurantFlagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RestaurantHour _$RestaurantHourFromJson(Map<String, dynamic> json) {
  return _RestaurantHour.fromJson(json);
}

/// @nodoc
mixin _$RestaurantHour {
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  bool get temporary => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantHourCopyWith<RestaurantHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantHourCopyWith<$Res> {
  factory $RestaurantHourCopyWith(
          RestaurantHour value, $Res Function(RestaurantHour) then) =
      _$RestaurantHourCopyWithImpl<$Res, RestaurantHour>;
  @useResult
  $Res call({String openTime, String closeTime, bool temporary, bool closed});
}

/// @nodoc
class _$RestaurantHourCopyWithImpl<$Res, $Val extends RestaurantHour>
    implements $RestaurantHourCopyWith<$Res> {
  _$RestaurantHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = null,
    Object? closeTime = null,
    Object? temporary = null,
    Object? closed = null,
  }) {
    return _then(_value.copyWith(
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      temporary: null == temporary
          ? _value.temporary
          : temporary // ignore: cast_nullable_to_non_nullable
              as bool,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantHourImplCopyWith<$Res>
    implements $RestaurantHourCopyWith<$Res> {
  factory _$$RestaurantHourImplCopyWith(_$RestaurantHourImpl value,
          $Res Function(_$RestaurantHourImpl) then) =
      __$$RestaurantHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String openTime, String closeTime, bool temporary, bool closed});
}

/// @nodoc
class __$$RestaurantHourImplCopyWithImpl<$Res>
    extends _$RestaurantHourCopyWithImpl<$Res, _$RestaurantHourImpl>
    implements _$$RestaurantHourImplCopyWith<$Res> {
  __$$RestaurantHourImplCopyWithImpl(
      _$RestaurantHourImpl _value, $Res Function(_$RestaurantHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = null,
    Object? closeTime = null,
    Object? temporary = null,
    Object? closed = null,
  }) {
    return _then(_$RestaurantHourImpl(
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      temporary: null == temporary
          ? _value.temporary
          : temporary // ignore: cast_nullable_to_non_nullable
              as bool,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantHourImpl extends _RestaurantHour {
  _$RestaurantHourImpl(
      {required this.openTime,
      required this.closeTime,
      required this.temporary,
      required this.closed})
      : super._();

  factory _$RestaurantHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantHourImplFromJson(json);

  @override
  final String openTime;
  @override
  final String closeTime;
  @override
  final bool temporary;
  @override
  final bool closed;

  @override
  String toString() {
    return 'RestaurantHour(openTime: $openTime, closeTime: $closeTime, temporary: $temporary, closed: $closed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantHourImpl &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.temporary, temporary) ||
                other.temporary == temporary) &&
            (identical(other.closed, closed) || other.closed == closed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, openTime, closeTime, temporary, closed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantHourImplCopyWith<_$RestaurantHourImpl> get copyWith =>
      __$$RestaurantHourImplCopyWithImpl<_$RestaurantHourImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantHourImplToJson(
      this,
    );
  }
}

abstract class _RestaurantHour extends RestaurantHour {
  factory _RestaurantHour(
      {required final String openTime,
      required final String closeTime,
      required final bool temporary,
      required final bool closed}) = _$RestaurantHourImpl;
  _RestaurantHour._() : super._();

  factory _RestaurantHour.fromJson(Map<String, dynamic> json) =
      _$RestaurantHourImpl.fromJson;

  @override
  String get openTime;
  @override
  String get closeTime;
  @override
  bool get temporary;
  @override
  bool get closed;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantHourImplCopyWith<_$RestaurantHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RestaurantInfo _$RestaurantInfoFromJson(Map<String, dynamic> json) {
  return _RestaurantInfo.fromJson(json);
}

/// @nodoc
mixin _$RestaurantInfo {
  @JsonKey(includeToJson: false)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get nip => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get country => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get streetNumber => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get city => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get postalCode => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic get isChanged => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  double get reservationHourLength => throw _privateConstructorUsedError;
  List<RestaurantFlag> get flags => throw _privateConstructorUsedError;
  Map<int, RestaurantHour> get openingHours =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantInfoCopyWith<RestaurantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantInfoCopyWith<$Res> {
  factory $RestaurantInfoCopyWith(
          RestaurantInfo value, $Res Function(RestaurantInfo) then) =
      _$RestaurantInfoCopyWithImpl<$Res, RestaurantInfo>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String name,
      @JsonKey(includeToJson: false) String nip,
      @JsonKey(includeToJson: false) String country,
      @JsonKey(includeToJson: false) String streetNumber,
      @JsonKey(includeToJson: false) String city,
      @JsonKey(includeToJson: false) String postalCode,
      @JsonKey(includeToJson: false) double latitude,
      @JsonKey(includeToJson: false) double longitude,
      @JsonKey(includeToJson: false) String photoUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) dynamic isChanged,
      String email,
      String phoneNumber,
      double reservationHourLength,
      List<RestaurantFlag> flags,
      Map<int, RestaurantHour> openingHours});
}

/// @nodoc
class _$RestaurantInfoCopyWithImpl<$Res, $Val extends RestaurantInfo>
    implements $RestaurantInfoCopyWith<$Res> {
  _$RestaurantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nip = null,
    Object? country = null,
    Object? streetNumber = null,
    Object? city = null,
    Object? postalCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? photoUrl = null,
    Object? isChanged = freezed,
    Object? email = null,
    Object? phoneNumber = null,
    Object? reservationHourLength = null,
    Object? flags = null,
    Object? openingHours = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nip: null == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: null == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isChanged: freezed == isChanged
          ? _value.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reservationHourLength: null == reservationHourLength
          ? _value.reservationHourLength
          : reservationHourLength // ignore: cast_nullable_to_non_nullable
              as double,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<RestaurantFlag>,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<int, RestaurantHour>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantInfoImplCopyWith<$Res>
    implements $RestaurantInfoCopyWith<$Res> {
  factory _$$RestaurantInfoImplCopyWith(_$RestaurantInfoImpl value,
          $Res Function(_$RestaurantInfoImpl) then) =
      __$$RestaurantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String name,
      @JsonKey(includeToJson: false) String nip,
      @JsonKey(includeToJson: false) String country,
      @JsonKey(includeToJson: false) String streetNumber,
      @JsonKey(includeToJson: false) String city,
      @JsonKey(includeToJson: false) String postalCode,
      @JsonKey(includeToJson: false) double latitude,
      @JsonKey(includeToJson: false) double longitude,
      @JsonKey(includeToJson: false) String photoUrl,
      @JsonKey(includeFromJson: false, includeToJson: false) dynamic isChanged,
      String email,
      String phoneNumber,
      double reservationHourLength,
      List<RestaurantFlag> flags,
      Map<int, RestaurantHour> openingHours});
}

/// @nodoc
class __$$RestaurantInfoImplCopyWithImpl<$Res>
    extends _$RestaurantInfoCopyWithImpl<$Res, _$RestaurantInfoImpl>
    implements _$$RestaurantInfoImplCopyWith<$Res> {
  __$$RestaurantInfoImplCopyWithImpl(
      _$RestaurantInfoImpl _value, $Res Function(_$RestaurantInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nip = null,
    Object? country = null,
    Object? streetNumber = null,
    Object? city = null,
    Object? postalCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? photoUrl = null,
    Object? isChanged = freezed,
    Object? email = null,
    Object? phoneNumber = null,
    Object? reservationHourLength = null,
    Object? flags = null,
    Object? openingHours = null,
  }) {
    return _then(_$RestaurantInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nip: null == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: null == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isChanged: freezed == isChanged ? _value.isChanged! : isChanged,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reservationHourLength: null == reservationHourLength
          ? _value.reservationHourLength
          : reservationHourLength // ignore: cast_nullable_to_non_nullable
              as double,
      flags: null == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<RestaurantFlag>,
      openingHours: null == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as Map<int, RestaurantHour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantInfoImpl extends _RestaurantInfo {
  _$RestaurantInfoImpl(
      {@JsonKey(includeToJson: false) required this.name,
      @JsonKey(includeToJson: false) required this.nip,
      @JsonKey(includeToJson: false) required this.country,
      @JsonKey(includeToJson: false) required this.streetNumber,
      @JsonKey(includeToJson: false) required this.city,
      @JsonKey(includeToJson: false) required this.postalCode,
      @JsonKey(includeToJson: false) required this.latitude,
      @JsonKey(includeToJson: false) required this.longitude,
      @JsonKey(includeToJson: false) required this.photoUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.isChanged = false,
      required this.email,
      required this.phoneNumber,
      required this.reservationHourLength,
      required final List<RestaurantFlag> flags,
      required final Map<int, RestaurantHour> openingHours})
      : _flags = flags,
        _openingHours = openingHours,
        super._();

  factory _$RestaurantInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantInfoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String name;
  @override
  @JsonKey(includeToJson: false)
  final String nip;
  @override
  @JsonKey(includeToJson: false)
  final String country;
  @override
  @JsonKey(includeToJson: false)
  final String streetNumber;
  @override
  @JsonKey(includeToJson: false)
  final String city;
  @override
  @JsonKey(includeToJson: false)
  final String postalCode;
  @override
  @JsonKey(includeToJson: false)
  final double latitude;
  @override
  @JsonKey(includeToJson: false)
  final double longitude;
  @override
  @JsonKey(includeToJson: false)
  final String photoUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final dynamic isChanged;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final double reservationHourLength;
  final List<RestaurantFlag> _flags;
  @override
  List<RestaurantFlag> get flags {
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flags);
  }

  final Map<int, RestaurantHour> _openingHours;
  @override
  Map<int, RestaurantHour> get openingHours {
    if (_openingHours is EqualUnmodifiableMapView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_openingHours);
  }

  @override
  String toString() {
    return 'RestaurantInfo(name: $name, nip: $nip, country: $country, streetNumber: $streetNumber, city: $city, postalCode: $postalCode, latitude: $latitude, longitude: $longitude, photoUrl: $photoUrl, isChanged: $isChanged, email: $email, phoneNumber: $phoneNumber, reservationHourLength: $reservationHourLength, flags: $flags, openingHours: $openingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nip, nip) || other.nip == nip) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other.isChanged, isChanged) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.reservationHourLength, reservationHourLength) ||
                other.reservationHourLength == reservationHourLength) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      nip,
      country,
      streetNumber,
      city,
      postalCode,
      latitude,
      longitude,
      photoUrl,
      const DeepCollectionEquality().hash(isChanged),
      email,
      phoneNumber,
      reservationHourLength,
      const DeepCollectionEquality().hash(_flags),
      const DeepCollectionEquality().hash(_openingHours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantInfoImplCopyWith<_$RestaurantInfoImpl> get copyWith =>
      __$$RestaurantInfoImplCopyWithImpl<_$RestaurantInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantInfoImplToJson(
      this,
    );
  }
}

abstract class _RestaurantInfo extends RestaurantInfo {
  factory _RestaurantInfo(
          {@JsonKey(includeToJson: false) required final String name,
          @JsonKey(includeToJson: false) required final String nip,
          @JsonKey(includeToJson: false) required final String country,
          @JsonKey(includeToJson: false) required final String streetNumber,
          @JsonKey(includeToJson: false) required final String city,
          @JsonKey(includeToJson: false) required final String postalCode,
          @JsonKey(includeToJson: false) required final double latitude,
          @JsonKey(includeToJson: false) required final double longitude,
          @JsonKey(includeToJson: false) required final String photoUrl,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final dynamic isChanged,
          required final String email,
          required final String phoneNumber,
          required final double reservationHourLength,
          required final List<RestaurantFlag> flags,
          required final Map<int, RestaurantHour> openingHours}) =
      _$RestaurantInfoImpl;
  _RestaurantInfo._() : super._();

  factory _RestaurantInfo.fromJson(Map<String, dynamic> json) =
      _$RestaurantInfoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get name;
  @override
  @JsonKey(includeToJson: false)
  String get nip;
  @override
  @JsonKey(includeToJson: false)
  String get country;
  @override
  @JsonKey(includeToJson: false)
  String get streetNumber;
  @override
  @JsonKey(includeToJson: false)
  String get city;
  @override
  @JsonKey(includeToJson: false)
  String get postalCode;
  @override
  @JsonKey(includeToJson: false)
  double get latitude;
  @override
  @JsonKey(includeToJson: false)
  double get longitude;
  @override
  @JsonKey(includeToJson: false)
  String get photoUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  dynamic get isChanged;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  double get reservationHourLength;
  @override
  List<RestaurantFlag> get flags;
  @override
  Map<int, RestaurantHour> get openingHours;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantInfoImplCopyWith<_$RestaurantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
