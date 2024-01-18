// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantFlagImpl _$$RestaurantFlagImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantFlagImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      setting: json['setting'] as bool,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$RestaurantFlagImplToJson(
        _$RestaurantFlagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'setting': instance.setting,
      'description': instance.description,
    };

_$RestaurantHourImpl _$$RestaurantHourImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantHourImpl(
      openTime: json['open_time'] as String,
      closeTime: json['close_time'] as String,
      temporary: json['temporary'] as bool,
      closed: json['closed'] as bool,
    );

Map<String, dynamic> _$$RestaurantHourImplToJson(
        _$RestaurantHourImpl instance) =>
    <String, dynamic>{
      'open_time': instance.openTime,
      'close_time': instance.closeTime,
      'temporary': instance.temporary,
      'closed': instance.closed,
    };

_$RestaurantInfoImpl _$$RestaurantInfoImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantInfoImpl(
      name: json['name'] as String,
      nip: json['nip'] as String,
      country: json['country'] as String,
      streetNumber: json['street_number'] as String,
      city: json['city'] as String,
      postalCode: json['postal_code'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      photoUrl: json['photo_url'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      reservationHourLength:
          (json['reservation_hour_length'] as num).toDouble(),
      flags: (json['flags'] as List<dynamic>)
          .map((e) => RestaurantFlag.fromJson(e as Map<String, dynamic>))
          .toList(),
      openingHours: (json['opening_hours'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), RestaurantHour.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$RestaurantInfoImplToJson(
        _$RestaurantInfoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'reservation_hour_length': instance.reservationHourLength,
      'flags': instance.flags,
      'opening_hours':
          instance.openingHours.map((k, e) => MapEntry(k.toString(), e)),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$infoHash() => r'4e9d39a246cb7e59012207abf15c6d180f6b1ec0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Info
    extends BuildlessAutoDisposeAsyncNotifier<RestaurantInfo> {
  late final int? restaurantId;

  FutureOr<RestaurantInfo> build([
    int? restaurantId,
  ]);
}

/// See also [Info].
@ProviderFor(Info)
const infoProvider = InfoFamily();

/// See also [Info].
class InfoFamily extends Family<AsyncValue<RestaurantInfo>> {
  /// See also [Info].
  const InfoFamily();

  /// See also [Info].
  InfoProvider call([
    int? restaurantId,
  ]) {
    return InfoProvider(
      restaurantId,
    );
  }

  @override
  InfoProvider getProviderOverride(
    covariant InfoProvider provider,
  ) {
    return call(
      provider.restaurantId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'infoProvider';
}

/// See also [Info].
class InfoProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Info, RestaurantInfo> {
  /// See also [Info].
  InfoProvider([
    int? restaurantId,
  ]) : this._internal(
          () => Info()..restaurantId = restaurantId,
          from: infoProvider,
          name: r'infoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$infoHash,
          dependencies: InfoFamily._dependencies,
          allTransitiveDependencies: InfoFamily._allTransitiveDependencies,
          restaurantId: restaurantId,
        );

  InfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.restaurantId,
  }) : super.internal();

  final int? restaurantId;

  @override
  FutureOr<RestaurantInfo> runNotifierBuild(
    covariant Info notifier,
  ) {
    return notifier.build(
      restaurantId,
    );
  }

  @override
  Override overrideWith(Info Function() create) {
    return ProviderOverride(
      origin: this,
      override: InfoProvider._internal(
        () => create()..restaurantId = restaurantId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        restaurantId: restaurantId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Info, RestaurantInfo>
      createElement() {
    return _InfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InfoProvider && other.restaurantId == restaurantId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, restaurantId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InfoRef on AutoDisposeAsyncNotifierProviderRef<RestaurantInfo> {
  /// The parameter `restaurantId` of this provider.
  int? get restaurantId;
}

class _InfoProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Info, RestaurantInfo>
    with InfoRef {
  _InfoProviderElement(super.provider);

  @override
  int? get restaurantId => (origin as InfoProvider).restaurantId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
