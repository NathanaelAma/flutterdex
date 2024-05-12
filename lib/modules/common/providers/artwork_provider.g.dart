// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$artWorkUrlHash() => r'961d4c671198f5c1d40a26769f2b8efc8785f458';

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

/// See also [artWorkUrl].
@ProviderFor(artWorkUrl)
const artWorkUrlProvider = ArtWorkUrlFamily();

/// See also [artWorkUrl].
class ArtWorkUrlFamily extends Family<String> {
  /// See also [artWorkUrl].
  const ArtWorkUrlFamily();

  /// See also [artWorkUrl].
  ArtWorkUrlProvider call(
    int id,
  ) {
    return ArtWorkUrlProvider(
      id,
    );
  }

  @override
  ArtWorkUrlProvider getProviderOverride(
    covariant ArtWorkUrlProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'artWorkUrlProvider';
}

/// See also [artWorkUrl].
class ArtWorkUrlProvider extends AutoDisposeProvider<String> {
  /// See also [artWorkUrl].
  ArtWorkUrlProvider(
    int id,
  ) : this._internal(
          (ref) => artWorkUrl(
            ref as ArtWorkUrlRef,
            id,
          ),
          from: artWorkUrlProvider,
          name: r'artWorkUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$artWorkUrlHash,
          dependencies: ArtWorkUrlFamily._dependencies,
          allTransitiveDependencies:
              ArtWorkUrlFamily._allTransitiveDependencies,
          id: id,
        );

  ArtWorkUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    String Function(ArtWorkUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ArtWorkUrlProvider._internal(
        (ref) => create(ref as ArtWorkUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _ArtWorkUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArtWorkUrlProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArtWorkUrlRef on AutoDisposeProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ArtWorkUrlProviderElement extends AutoDisposeProviderElement<String>
    with ArtWorkUrlRef {
  _ArtWorkUrlProviderElement(super.provider);

  @override
  int get id => (origin as ArtWorkUrlProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
