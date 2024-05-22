// To parse this JSON data, do
//
//     final pokemonType = pokemonTypeFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yapdex/core/data/models/utility/common.dart';

part 'pokemon_type.freezed.dart';

part 'pokemon_type.g.dart';

PokemonType pokemonTypeFromJson(String str) =>
    PokemonType.fromJson(json.decode(str) as Map<String, dynamic>);

String pokemonTypeToJson(PokemonType data) => json.encode(data.toJson());

//Type Defs

typedef TypePokemonList = List<TypePokemon>;
typedef Names = List<Name>;

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int id,
    required String name,
    required DamageRelations damage_relations,
    required NamedAPIResource generation,
    required NamedAPIResource move_damage_class,
    required Names names,
    required TypePokemonList pokemon,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
class DamageRelations with _$DamageRelations {
  const factory DamageRelations({
    required List<NamedAPIResource> no_damage_to,
    required List<NamedAPIResource> half_damage_to,
    required List<NamedAPIResource> double_damage_yto,
    required List<NamedAPIResource> no_damage_from,
    required List<NamedAPIResource> half_damage_from,
    required List<NamedAPIResource> double_damage_from,
  }) = _DamageRelations;

  factory DamageRelations.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsFromJson(json);
}

@freezed
class TypePokemon with _$TypePokemon {
  const factory TypePokemon({
    required int slot,
    required NamedAPIResource pokemon,
  }) = _TypePokemon;

  factory TypePokemon.fromJson(Map<String, dynamic> json) =>
      _$TypePokemonFromJson(json);
}
