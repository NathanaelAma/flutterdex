// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeImpl _$$PokemonTypeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      damage_relations: DamageRelations.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
      generation:
          NamedAPIResource.fromJson(json['generation'] as Map<String, dynamic>),
      move_damage_class: NamedAPIResource.fromJson(
          json['move_damage_class'] as Map<String, dynamic>),
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemon: (json['pokemon'] as List<dynamic>)
          .map((e) => TypePokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonTypeImplToJson(_$PokemonTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'damage_relations': instance.damage_relations,
      'generation': instance.generation,
      'move_damage_class': instance.move_damage_class,
      'names': instance.names,
      'pokemon': instance.pokemon,
    };

_$DamageRelationsImpl _$$DamageRelationsImplFromJson(
        Map<String, dynamic> json) =>
    _$DamageRelationsImpl(
      no_damage_to: (json['no_damage_to'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      half_damage_to: (json['half_damage_to'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      double_damage_yto: (json['double_damage_yto'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      no_damage_from: (json['no_damage_from'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      half_damage_from: (json['half_damage_from'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      double_damage_from: (json['double_damage_from'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DamageRelationsImplToJson(
        _$DamageRelationsImpl instance) =>
    <String, dynamic>{
      'no_damage_to': instance.no_damage_to,
      'half_damage_to': instance.half_damage_to,
      'double_damage_yto': instance.double_damage_yto,
      'no_damage_from': instance.no_damage_from,
      'half_damage_from': instance.half_damage_from,
      'double_damage_from': instance.double_damage_from,
    };

_$TypePokemonImpl _$$TypePokemonImplFromJson(Map<String, dynamic> json) =>
    _$TypePokemonImpl(
      slot: (json['slot'] as num).toInt(),
      pokemon:
          NamedAPIResource.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypePokemonImplToJson(_$TypePokemonImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'pokemon': instance.pokemon,
    };
