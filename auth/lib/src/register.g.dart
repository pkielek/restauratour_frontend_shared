// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterInfoImpl _$$RegisterInfoImplFromJson(Map<String, dynamic> json) =>
    _$RegisterInfoImpl(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      email: json['email'] as String? ?? null,
      name: json['name'] as String? ?? null,
      accessKey: json['access_key'] as String? ?? null,
    );

Map<String, dynamic> _$$RegisterInfoImplToJson(_$RegisterInfoImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'email': instance.email,
      'name': instance.name,
      'access_key': instance.accessKey,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerHash() => r'196db7a4b737e3d08a6c8b2ccc8d684810a756e1';

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

abstract class _$Register extends BuildlessAutoDisposeNotifier<RegisterInfo> {
  late final AuthType type;

  RegisterInfo build(
    AuthType type,
  );
}

/// See also [Register].
@ProviderFor(Register)
const registerProvider = RegisterFamily();

/// See also [Register].
class RegisterFamily extends Family<RegisterInfo> {
  /// See also [Register].
  const RegisterFamily();

  /// See also [Register].
  RegisterProvider call(
    AuthType type,
  ) {
    return RegisterProvider(
      type,
    );
  }

  @override
  RegisterProvider getProviderOverride(
    covariant RegisterProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'registerProvider';
}

/// See also [Register].
class RegisterProvider
    extends AutoDisposeNotifierProviderImpl<Register, RegisterInfo> {
  /// See also [Register].
  RegisterProvider(
    AuthType type,
  ) : this._internal(
          () => Register()..type = type,
          from: registerProvider,
          name: r'registerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerHash,
          dependencies: RegisterFamily._dependencies,
          allTransitiveDependencies: RegisterFamily._allTransitiveDependencies,
          type: type,
        );

  RegisterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final AuthType type;

  @override
  RegisterInfo runNotifierBuild(
    covariant Register notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(Register Function() create) {
    return ProviderOverride(
      origin: this,
      override: RegisterProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Register, RegisterInfo> createElement() {
    return _RegisterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RegisterRef on AutoDisposeNotifierProviderRef<RegisterInfo> {
  /// The parameter `type` of this provider.
  AuthType get type;
}

class _RegisterProviderElement
    extends AutoDisposeNotifierProviderElement<Register, RegisterInfo>
    with RegisterRef {
  _RegisterProviderElement(super.provider);

  @override
  AuthType get type => (origin as RegisterProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
