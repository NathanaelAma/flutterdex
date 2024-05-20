// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonRepositoryHash() => r'9f9bbff5b32882eb896d3c76cf0ecff418a6d268';

/// See also [pokemonRepository].
@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider =
    AutoDisposeProvider<PokemonRepository>.internal(
  pokemonRepository,
  name: r'pokemonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonRepositoryHash,
  dependencies: <ProviderOrFamily>[dioProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    dioProvider,
    ...?dioProvider.allTransitiveDependencies
  },
);

typedef PokemonRepositoryRef = AutoDisposeProviderRef<PokemonRepository>;
String _$pokemonSpeciesRepositoryHash() =>
    r'7523d11c769ede9c065d08a4527f73b9f338f612';

/// See also [pokemonSpeciesRepository].
@ProviderFor(pokemonSpeciesRepository)
final pokemonSpeciesRepositoryProvider =
    AutoDisposeProvider<PokemonSpeciesRepository>.internal(
  pokemonSpeciesRepository,
  name: r'pokemonSpeciesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonSpeciesRepositoryHash,
  dependencies: <ProviderOrFamily>[dioProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    dioProvider,
    ...?dioProvider.allTransitiveDependencies
  },
);

typedef PokemonSpeciesRepositoryRef
    = AutoDisposeProviderRef<PokemonSpeciesRepository>;
String _$pokemonListHash() => r'71de51a1353fafa95d2bb12509bc837aecc22150';

/// See also [PokemonList].
@ProviderFor(PokemonList)
final pokemonListProvider =
    AsyncNotifierProvider<PokemonList, List<Pokemon>>.internal(
  PokemonList.new,
  name: r'pokemonListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonListHash,
  dependencies: <ProviderOrFamily>[pokemonRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    pokemonRepositoryProvider,
    ...?pokemonRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$PokemonList = AsyncNotifier<List<Pokemon>>;
String _$currentPokemonHash() => r'11d1ce2d0445205444cb54976e055f05594d7c4c';

/// See also [CurrentPokemon].
@ProviderFor(CurrentPokemon)
final currentPokemonProvider =
    NotifierProvider<CurrentPokemon, Pokemon>.internal(
  CurrentPokemon.new,
  name: r'currentPokemonProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentPokemonHash,
  dependencies: <ProviderOrFamily>[pokemonRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    pokemonRepositoryProvider,
    ...?pokemonRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$CurrentPokemon = Notifier<Pokemon>;
String _$currentPokemonSpeciesHash() =>
    r'0af00f9bfe7ab22dcf281a31b73345b5344f5fd1';

/// See also [CurrentPokemonSpecies].
@ProviderFor(CurrentPokemonSpecies)
final currentPokemonSpeciesProvider =
    NotifierProvider<CurrentPokemonSpecies, PokemonSpecies>.internal(
  CurrentPokemonSpecies.new,
  name: r'currentPokemonSpeciesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentPokemonSpeciesHash,
  dependencies: <ProviderOrFamily>[pokemonSpeciesRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    pokemonSpeciesRepositoryProvider,
    ...?pokemonSpeciesRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$CurrentPokemonSpecies = Notifier<PokemonSpecies>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
