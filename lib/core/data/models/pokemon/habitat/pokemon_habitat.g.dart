// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_habitat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonHabitatImpl _$$PokemonHabitatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonHabitatImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonSpecies: (json['pokemonSpecies'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonHabitatImplToJson(
        _$PokemonHabitatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'names': instance.names,
      'pokemonSpecies': instance.pokemonSpecies,
    };
