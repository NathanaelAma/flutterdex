// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonRepositoryHash() => r'1720e9d29d2d2956954c26046718d851149f0cbb';

/// See also [pokemonRepository].
@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider = Provider<PokemonRepository>.internal(
  pokemonRepository,
  name: r'pokemonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonRepositoryRef = ProviderRef<PokemonRepository>;
String _$pokemonListHash() => r'649b748657198b7f614ba233b55395528a666337';

/// See also [PokemonList].
@ProviderFor(PokemonList)
final pokemonListProvider =
    AsyncNotifierProvider<PokemonList, List<Pokemon>>.internal(
  PokemonList.new,
  name: r'pokemonListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonList = AsyncNotifier<List<Pokemon>>;
String _$currentPokemonHash() => r'2bceed2e5dd8acf66b14ecc4a1c7a3948c9ae0b3';

/// See also [CurrentPokemon].
@ProviderFor(CurrentPokemon)
final currentPokemonProvider =
    NotifierProvider<CurrentPokemon, Pokemon>.internal(
  CurrentPokemon.new,
  name: r'currentPokemonProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentPokemonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentPokemon = Notifier<Pokemon>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
