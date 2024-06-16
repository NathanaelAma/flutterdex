import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';

/// Repository class for fetching Pokemon species data.
class PokemonSpeciesRepository {
  PokemonSpeciesRepository({
    required this.dio,
  });

  final Dio dio;

  /// Fetches Pokemon species data by ID.
  ///
  /// Returns a [Future] that resolves to a [PokemonSpecies] object.
  /// Throws an exception if the request fails.
  Future<PokemonSpecies> getPokemonSpeciesById({required int id}) async {
    try {
      final url = Uri(
        scheme: 'https',
        host: 'pokeapi.co',
        path: 'api/v2/pokemon-species/$id',
      ).toString();
      final Response<Map<String, dynamic>> response = await dio.get(url);

      final PokemonSpecies pokemonSpecies =
          PokemonSpecies.fromJson(response.data!);
      return pokemonSpecies;
    } catch (exception) {
      if (kDebugMode) {
        debugPrint("exception: $exception");
      }
      rethrow;
    }
  }

  /// Fetches Pokemon species data by name.
  ///
  /// Returns a [Future] that resolves to a [PokemonSpecies] object.
  /// Throws an exception if the request fails.
  Future<PokemonSpecies> getPokemonSpeciesByName({required String name}) async {
    try {
      final url = Uri(
        scheme: 'https',
        host: 'pokeapi.co',
        path: 'api/v2/pokemon-species/$name',
      ).toString();
      final response = await dio.get(url);
      final pokemonSpecies =
          PokemonSpecies.fromJson(response.data as Map<String, dynamic>);
      return pokemonSpecies;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }

  /// Fetches Pokemon species data by URL.
  ///
  /// Returns a [Future] that resolves to a [PokemonSpecies] object.
  /// Throws an exception if the request fails.
  Future<PokemonSpecies> getPokemonSpeciesByUrl({required String url}) async {
    try {
      final response = await dio.get(url);
      final pokemonSpecies =
          PokemonSpecies.fromJson(response.data as Map<String, dynamic>);
      return pokemonSpecies;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }
}
