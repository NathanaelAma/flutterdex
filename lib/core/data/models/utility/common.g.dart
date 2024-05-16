// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NamedAPIResourceImpl _$$NamedAPIResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$NamedAPIResourceImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedAPIResourceImplToJson(
        _$NamedAPIResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$APIResourceImpl _$$APIResourceImplFromJson(Map<String, dynamic> json) =>
    _$APIResourceImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$APIResourceImplToJson(_$APIResourceImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      name: json['name'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };

_$FlavorTextImpl _$$FlavorTextImplFromJson(Map<String, dynamic> json) =>
    _$FlavorTextImpl(
      flavor_text: json['flavor_text'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
      version:
          NamedAPIResource.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextImplToJson(_$FlavorTextImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavor_text,
      'language': instance.language,
      'version': instance.version,
    };
