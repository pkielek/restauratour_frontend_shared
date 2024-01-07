// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planner_tables_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlannerTablesBoardImpl _$$PlannerTablesBoardImplFromJson(
        Map<String, dynamic> json) =>
    _$PlannerTablesBoardImpl(
      tables: (json['tables'] as List<dynamic>)
          .map((e) => PlannerTable.fromJson(e as Map<String, dynamic>))
          .toList(),
      borders: (json['borders'] as List<dynamic>)
          .map((e) => PlannerBorder.fromJson(e as Map<String, dynamic>))
          .toList(),
      precision: (json['precision'] as num).toDouble(),
    );

Map<String, dynamic> _$$PlannerTablesBoardImplToJson(
        _$PlannerTablesBoardImpl instance) =>
    <String, dynamic>{
      'tables': instance.tables,
      'borders': instance.borders,
      'precision': instance.precision,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$plannerInfoHash() => r'd45dcadb3f3199340d78a9d21da53fbaaf3a2880';

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

abstract class _$PlannerInfo
    extends BuildlessAutoDisposeAsyncNotifier<PlannerTablesBoard> {
  late final AuthType type;
  late final int? restaurantID;

  FutureOr<PlannerTablesBoard> build(
    AuthType type, [
    int? restaurantID,
  ]);
}

/// See also [PlannerInfo].
@ProviderFor(PlannerInfo)
const plannerInfoProvider = PlannerInfoFamily();

/// See also [PlannerInfo].
class PlannerInfoFamily extends Family<AsyncValue<PlannerTablesBoard>> {
  /// See also [PlannerInfo].
  const PlannerInfoFamily();

  /// See also [PlannerInfo].
  PlannerInfoProvider call(
    AuthType type, [
    int? restaurantID,
  ]) {
    return PlannerInfoProvider(
      type,
      restaurantID,
    );
  }

  @override
  PlannerInfoProvider getProviderOverride(
    covariant PlannerInfoProvider provider,
  ) {
    return call(
      provider.type,
      provider.restaurantID,
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
  String? get name => r'plannerInfoProvider';
}

/// See also [PlannerInfo].
class PlannerInfoProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PlannerInfo, PlannerTablesBoard> {
  /// See also [PlannerInfo].
  PlannerInfoProvider(
    AuthType type, [
    int? restaurantID,
  ]) : this._internal(
          () => PlannerInfo()
            ..type = type
            ..restaurantID = restaurantID,
          from: plannerInfoProvider,
          name: r'plannerInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$plannerInfoHash,
          dependencies: PlannerInfoFamily._dependencies,
          allTransitiveDependencies:
              PlannerInfoFamily._allTransitiveDependencies,
          type: type,
          restaurantID: restaurantID,
        );

  PlannerInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.restaurantID,
  }) : super.internal();

  final AuthType type;
  final int? restaurantID;

  @override
  FutureOr<PlannerTablesBoard> runNotifierBuild(
    covariant PlannerInfo notifier,
  ) {
    return notifier.build(
      type,
      restaurantID,
    );
  }

  @override
  Override overrideWith(PlannerInfo Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlannerInfoProvider._internal(
        () => create()
          ..type = type
          ..restaurantID = restaurantID,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        restaurantID: restaurantID,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlannerInfo, PlannerTablesBoard>
      createElement() {
    return _PlannerInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlannerInfoProvider &&
        other.type == type &&
        other.restaurantID == restaurantID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, restaurantID.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlannerInfoRef
    on AutoDisposeAsyncNotifierProviderRef<PlannerTablesBoard> {
  /// The parameter `type` of this provider.
  AuthType get type;

  /// The parameter `restaurantID` of this provider.
  int? get restaurantID;
}

class _PlannerInfoProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlannerInfo,
        PlannerTablesBoard> with PlannerInfoRef {
  _PlannerInfoProviderElement(super.provider);

  @override
  AuthType get type => (origin as PlannerInfoProvider).type;
  @override
  int? get restaurantID => (origin as PlannerInfoProvider).restaurantID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
