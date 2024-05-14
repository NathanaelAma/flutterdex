// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      species:
          NamedAPIResource.fromJson(json['species'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'abilities': instance.abilities,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$PokemonStatImpl _$$PokemonStatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatImpl(
      base_stat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: NamedAPIResource.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatImplToJson(_$PokemonStatImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.base_stat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$PokemonTypeImpl _$$PokemonTypeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypeImpl(
      slot: (json['slot'] as num).toInt(),
      type: NamedAPIResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeImplToJson(_$PokemonTypeImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$AbilityResourceImpl _$$AbilityResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$AbilityResourceImpl(
      ability:
          NamedAPIResource.fromJson(json['ability'] as Map<String, dynamic>),
      is_hidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$$AbilityResourceImplToJson(
        _$AbilityResourceImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.is_hidden,
      'slot': instance.slot,
    };
