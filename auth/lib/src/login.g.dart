// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'9718a5e2a672946e0fcd7f2e2e02367e61c891a5';

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

abstract class _$Login extends BuildlessAutoDisposeAsyncNotifier<LoginData> {
  late final AuthType type;

  FutureOr<LoginData> build(
    AuthType type,
  );
}

/// See also [Login].
@ProviderFor(Login)
const loginProvider = LoginFamily();

/// See also [Login].
class LoginFamily extends Family<AsyncValue<LoginData>> {
  /// See also [Login].
  const LoginFamily();

  /// See also [Login].
  LoginProvider call(
    AuthType type,
  ) {
    return LoginProvider(
      type,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
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
  String? get name => r'loginProvider';
}

/// See also [Login].
class LoginProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Login, LoginData> {
  /// See also [Login].
  LoginProvider(
    AuthType type,
  ) : this._internal(
          () => Login()..type = type,
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          type: type,
        );

  LoginProvider._internal(
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
  FutureOr<LoginData> runNotifierBuild(
    covariant Login notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(Login Function() create) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<Login, LoginData> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginRef on AutoDisposeAsyncNotifierProviderRef<LoginData> {
  /// The parameter `type` of this provider.
  AuthType get type;
}

class _LoginProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Login, LoginData>
    with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  AuthType get type => (origin as LoginProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
