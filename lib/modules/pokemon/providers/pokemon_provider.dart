import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yapdex/core/data/provider/dio_provider.dart';
import 'package:yapdex/core/data/repositories/pokemon_repository.dart';

part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: true)
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) =>
    PokemonRepository(
     dio: ref.watch(dioProvider),
    );