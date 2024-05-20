// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesImpl _$$PokemonSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSpeciesImpl(
      capture_rate: (json['capture_rate'] as num).toInt(),
      egg_groups: (json['egg_groups'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolution_chain:
          APIResource.fromJson(json['evolution_chain'] as Map<String, dynamic>),
      flavor_text_entries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender_rate: (json['gender_rate'] as num).toInt(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => Genus.fromJson(e as Map<String, dynamic>))
          .toList(),
      generation:
          NamedAPIResource.fromJson(json['generation'] as Map<String, dynamic>),
      habitat:
          NamedAPIResource.fromJson(json['habitat'] as Map<String, dynamic>),
      hatch_counter: (json['hatch_counter'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      is_baby: json['is_baby'] as bool,
      is_legendary: json['is_legendary'] as bool,
      is_mythical: json['is_mythical'] as bool,
      name: json['name'] as String,
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonSpeciesImplToJson(
        _$PokemonSpeciesImpl instance) =>
    <String, dynamic>{
      'capture_rate': instance.capture_rate,
      'egg_groups': instance.egg_groups,
      'evolution_chain': instance.evolution_chain,
      'flavor_text_entries': instance.flavor_text_entries,
      'gender_rate': instance.gender_rate,
      'genera': instance.genera,
      'generation': instance.generation,
      'habitat': instance.habitat,
      'hatch_counter': instance.hatch_counter,
      'id': instance.id,
      'is_baby': instance.is_baby,
      'is_legendary': instance.is_legendary,
      'is_mythical': instance.is_mythical,
      'name': instance.name,
      'names': instance.names,
    };

_$FlavorTextEntryImpl _$$FlavorTextEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$FlavorTextEntryImpl(
      flavor_text: json['flavor_text'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
      version:
          NamedAPIResource.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextEntryImplToJson(
        _$FlavorTextEntryImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavor_text,
      'language': instance.language,
      'version': instance.version,
    };

_$GenusImpl _$$GenusImplFromJson(Map<String, dynamic> json) => _$GenusImpl(
      genus: json['genus'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenusImplToJson(_$GenusImpl instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };
