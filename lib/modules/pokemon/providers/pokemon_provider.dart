import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';
import 'package:yapdex/core/data/models/utility/common.dart';
import 'package:yapdex/core/data/provider/dio_provider.dart';
import 'package:yapdex/core/data/repositories/pokemon/pokemon_species_repository.dart';
import 'package:yapdex/core/data/repositories/pokemon_repository.dart';
import 'package:yapdex/core/initializer/onstart_service.dart';

part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: false, dependencies: [dio])
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  return PokemonRepository(
    dio: ref.watch(dioProvider),
  );
}

@Riverpod(dependencies: [dio])
PokemonSpeciesRepository pokemonSpeciesRepository(
        PokemonSpeciesRepositoryRef ref) =>
    PokemonSpeciesRepository(
      dio: ref.watch(dioProvider),
    );

@Riverpod(keepAlive: true, dependencies: [pokemonRepository])
class PokemonList extends _$PokemonList implements OnStartService {
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

  @override
  Future<void> init() async {
    getPokemonList();
  }
}

@Riverpod(keepAlive: true, dependencies: [pokemonRepository])
class CurrentPokemon extends _$CurrentPokemon implements OnStartService {
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

  void setCurrentPokemonById({required int id}) {
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

  @override
  Future<void> init() async {
    setCurrentPokemonById(id: 1);
  }
}

@Riverpod(keepAlive: true, dependencies: [pokemonSpeciesRepository])
class CurrentPokemonSpecies extends _$CurrentPokemonSpecies
    implements OnStartService {
  final PokemonSpecies _currentPokemonSpecies = const PokemonSpecies(
    id: 0,
    name: '',
    names: [],
    gender_rate: 0,
    capture_rate: 0,
    is_baby: false,
    is_legendary: false,
    is_mythical: false,
    hatch_counter: 0,
    habitat: NamedAPIResource(name: '', url: ''),
    egg_groups: [],
    generation: NamedAPIResource(name: '', url: ''),
    flavor_text_entries: [],
    genera: [],
    evolution_chain: APIResource(url: ""),
  );

  void setCurrentPokemonSpeciesById(int id) {
    final pokemonSpeciesRepository = ref.read(pokemonSpeciesRepositoryProvider);
    pokemonSpeciesRepository
        .getPokemonSpeciesById(id: id)
        .then((pokemonSpecies) {
      state = pokemonSpecies;
    });
  }

  void setCurrentPokemonSpeciesByName(String name) {
    final pokemonSpeciesRepository = ref.read(pokemonSpeciesRepositoryProvider);
    pokemonSpeciesRepository
        .getPokemonSpeciesByName(name: name)
        .then((pokemonSpecies) {
      state = pokemonSpecies;
    });
  }

  void setCurrentPokemonSpeciesByUrl(String url) {
    final pokemonSpeciesRepository = ref.read(pokemonSpeciesRepositoryProvider);
    pokemonSpeciesRepository
        .getPokemonSpeciesByUrl(url: url)
        .then((pokemonSpecies) {
      state = pokemonSpecies;
    });
  }

  @override
  PokemonSpecies build() {
    return _currentPokemonSpecies;
  }

  @override
  Future<void> init() async {
    setCurrentPokemonSpeciesById(1);
  }
}
