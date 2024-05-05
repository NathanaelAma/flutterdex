// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserDataImpl _$$AuthenticatedUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserDataImpl(
      id: json['id'] as String?,
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['creation_date'], const TimestampConverter().fromJson),
      lastUpdateDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['last_update_date'], const TimestampConverter().fromJson),
      email: json['email'] as String,
      name: json['name'] as String,
      avatarPath: json['avatarPath'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedUserDataImplToJson(
    _$AuthenticatedUserDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', Converters.id(instance.id));
  val['creation_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.creationDate, const TimestampConverter().toJson);
  val['last_update_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.lastUpdateDate, const TimestampConverter().toJson);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['avatarPath'] = instance.avatarPath;
  val['runtimeType'] = instance.$type;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$AnonymousUserDataImpl _$$AnonymousUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AnonymousUserDataImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AnonymousUserDataImplToJson(
        _$AnonymousUserDataImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingUserDataImpl _$$LoadingUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadingUserDataImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingUserDataImplToJson(
        _$LoadingUserDataImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
