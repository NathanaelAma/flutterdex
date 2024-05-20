import 'dart:convert';
import 'dart:js_interop';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';

class PokemonSpeciesRepository {
  PokemonSpeciesRepository({
    required this.dio,
  });

  final Dio dio;

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
      debugPrint(pokemonSpecies.runtimeType.toString());
      return pokemonSpecies;
    } catch (exception) {
      if (kDebugMode) {
        print("exception: $exception");
      }
      rethrow;
    }
  }

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
