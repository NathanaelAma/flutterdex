import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:yapdex/core/data/models/api/api_model.dart';
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
      final url = Uri(
          scheme: 'https',
          host: 'pokeapi.co',
          path: 'api/v2/pokemon/',
          queryParameters: {
            'limit': limit.toString(),
            'offset': offset.toString(),
          }).toString();
      final Response<Map<String, dynamic>> response = await dio.get(url);

      final NamedAPIResourceList resourceList =
          NamedAPIResourceList.fromJson(response.data!);

      final List<NamedAPIResource> results = resourceList.results;

      return await Future.wait(results.map((pokemon) async {
        final pokemonResponse = await dio.get(pokemon.url);
        return Pokemon.fromJson(pokemonResponse.data as Map<String, dynamic>);
      }));
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }
}
