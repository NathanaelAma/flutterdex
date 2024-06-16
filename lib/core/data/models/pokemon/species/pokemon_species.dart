// To parse this JSON data, do
//
//     final pokemonSpecies = pokemonSpeciesFromJson(jsonString);

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yapdex/core/data/models/utility/common.dart';

part 'pokemon_species.freezed.dart';

part 'pokemon_species.g.dart';

PokemonSpecies pokemonSpeciesFromJson(String str) =>
    PokemonSpecies.fromJson(json.decode(str) as Map<String, dynamic>);

String pokemonSpeciesToJson(PokemonSpecies data) => json.encode(data.toJson());

@freezed
/// Represents a Pokemon species.
class PokemonSpecies with _$PokemonSpecies {
  /// Creates a PokemonSpecies instance.
  const factory PokemonSpecies({
    required int capture_rate,
    required List<NamedAPIResource> egg_groups,
    required APIResource evolution_chain,
    required List<FlavorTextEntry> flavor_text_entries,
    required int gender_rate,
    required List<Genus> genera,
    required NamedAPIResource generation,
    required NamedAPIResource habitat,
    required int hatch_counter,
    required int id,
    required bool is_baby,
    required bool is_legendary,
    required bool is_mythical,
    required String name,
    required List<Name> names,
  }) = _PokemonSpecies;

  /// Creates a PokemonSpecies instance from a JSON map.
  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

@freezed
class FlavorTextEntry with _$FlavorTextEntry {
  const factory FlavorTextEntry({
    required String flavor_text,
    required NamedAPIResource language,
    required NamedAPIResource version,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}

@freezed
class Genus with _$Genus {
  const factory Genus({
    required String genus,
    required NamedAPIResource language,
  }) = _Genus;

  factory Genus.fromJson(Map<String, dynamic> json) => _$GenusFromJson(json);
}
