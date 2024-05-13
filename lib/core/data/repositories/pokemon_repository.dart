// ignore_for_file: avoid_dynamic_calls, join_return_with_assignment

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/utility/common.dart';

class PokemonRepository {
  PokemonRepository({
    required this.dio,
  });

  final Dio dio;

  Future<Pokemon> getPokemonById({required int id}) async {
    try {
      final url = Uri(
        scheme: 'https',
        host: 'pokeapi.co',
        path: 'api/v2/pokemon/$id',
      ).toString();
      final response = await dio.get(url);

      final pokemon = Pokemon.fromJson(response.data as Map<String, dynamic>);
      return pokemon;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }

  Future<Pokemon> getPokemonByName({required String name}) async {
    try {
      final url = Uri(
        scheme: 'https',
        host: 'pokeapi.co',
        path: 'api/v2/pokemon/$name',
      ).toString();
      final response = await dio.get(url);
      final pokemon = Pokemon.fromJson(response.data as Map<String, dynamic>);
      return pokemon;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }

  //TODO: add pagination, generation, and other filters
  Future<List<Pokemon>> getPokemons([int limit = 151, int offset = 0]) async {
    try {
      List<Pokemon> pokemons = [];
      final url = Uri(
          scheme: 'https',
          host: 'pokeapi.co',
          path: 'api/v2/pokemon/',
          queryParameters: {
            'limit': limit.toString(),
            'offset': offset.toString(),
          }).toString();
      final response = await dio.get(url);

      final List<NamedAPIResource> data = response.data['results'] as List<NamedAPIResource>;
          data.map<NamedAPIResource>(
              (pokemon) => NamedAPIResource.fromJson(pokemon as Map<String, dynamic>))
          .toList();
      pokemons = await Future.wait(data.map((pokemon) async {
        final pokemonResponse = await dio.get(pokemon.url);
        return Pokemon.fromJson(pokemonResponse.data as Map<String, dynamic>);
      }));
      return pokemons;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }
}
