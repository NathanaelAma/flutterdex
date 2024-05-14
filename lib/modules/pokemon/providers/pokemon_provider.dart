import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/utility/common.dart';
import 'package:yapdex/core/data/provider/dio_provider.dart';
import 'package:yapdex/core/data/repositories/pokemon_repository.dart';

part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: true)
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) =>
    PokemonRepository(
     dio: ref.watch(dioProvider),
    );

@Riverpod(keepAlive: true)
class PokemonList extends _$PokemonList {
  List<Pokemon> _pokemonList = [];

  void getPokemonList() {
    final pokemonRepository = ref.read(pokemonRepositoryProvider);
    state = const AsyncLoading();
    pokemonRepository.getPokemons().then((value) {
      _pokemonList = value;
      state = AsyncData(_pokemonList);
    });
  }

  @override
  Future<List<Pokemon>> build() async {
    return _pokemonList;
  }
}

@Riverpod(keepAlive: true)
class CurrentPokemon extends _$CurrentPokemon {
  Pokemon _currentPokemon = const Pokemon(
    id: 0,
    name: '',
    species: NamedAPIResource(name: '', url: ''),
    abilities: [],
    stats: [],
    types: [],
    weight: 0,
  );

  void setCurrentPokemon(Pokemon pokemon) {
    _currentPokemon = pokemon;
    state = pokemon;

    
  }

  void setCurrentPokemonById(int id) {
    final pokemonRepository = ref.read(pokemonRepositoryProvider);
    pokemonRepository.getPokemonById(id: id).then((pokemon) {
      _currentPokemon = pokemon;
      state = _currentPokemon;
    });
  }

  @override
  Pokemon build() {
    return _currentPokemon;
  }
}
