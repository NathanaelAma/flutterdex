// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yapdex/core/data/models/utility/common.dart';

part 'pokemon.freezed.dart';

part 'pokemon.g.dart';

Pokemon pokemonFromJson(String str) =>
    Pokemon.fromJson(json.decode(str) as Map<String, dynamic>);

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

//typedefs
typedef PokemonStatList = List<PokemonStat>;
typedef PokemonTypeList = List<PokemonType>;
typedef AbilityList = List<AbilityResource>;
typedef PokemonSpecie = NamedAPIResource;
typedef Type = NamedAPIResource;
typedef Stat = NamedAPIResource;
typedef Ability = NamedAPIResource;

//TODO: look up json annotations for freezed

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required PokemonSpecie species,
    required AbilityList abilities,
    required PokemonStatList stats,
    required PokemonTypeList types,
    required int weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required int base_stat,
    required int effort,
    required Stat stat,
  }) = _PokemonStat;

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int slot,
    required Type type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
class AbilityResource with _$AbilityResource {
  const factory AbilityResource({
    required Ability ability,
    required bool is_hidden,
    required int slot,
  }) = _AbilityResource;

  factory AbilityResource.fromJson(Map<String, dynamic> json) =>
      _$AbilityResourceFromJson(json);
}
