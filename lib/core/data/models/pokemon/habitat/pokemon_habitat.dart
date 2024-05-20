import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yapdex/core/data/models/utility/common.dart';

part 'pokemon_habitat.freezed.dart';

part 'pokemon_habitat.g.dart';

PokemonHabitat pokemonHabitatFromJson(String str) =>
    PokemonHabitat.fromJson(json.decode(str) as Map<String, dynamic>);

String pokemonHabitatToJson(PokemonHabitat data) => json.encode(data.toJson());

@freezed
class PokemonHabitat with _$PokemonHabitat {
  const factory PokemonHabitat({
    required int id,
    required String name,
    required List<Name> names,
    required List<NamedAPIResource> pokemonSpecies,
  }) = _PokemonHabitat;

  factory PokemonHabitat.fromJson(Map<String, dynamic> json) =>
      _$PokemonHabitatFromJson(json);
}
