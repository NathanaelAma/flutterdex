import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.freezed.dart';
part 'common.g.dart';


@freezed
class NamedAPIResource with _$NamedAPIResource {
    const factory NamedAPIResource({
        required String name,
        required String url,
    }) = _NamedAPIResource;

    factory NamedAPIResource.fromJson(Map<String, dynamic> json) => _$NamedAPIResourceFromJson(json);
}

@freezed
class APIResource with _$APIResource {
    const factory APIResource({
        required String url,
    }) = _APIResource;

    factory APIResource.fromJson(Map<String, dynamic> json) => _$APIResourceFromJson(json);
}

@freezed
class Name with _$Name {
    const factory Name({
        required String name,
        required NamedAPIResource language,
    }) = _Name;

    factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class FlavorText with _$FlavorText{
    const factory FlavorText({
        required String flavor_text,
        required NamedAPIResource language,
        required NamedAPIResource version,
}) = _FlavorText;
 factory FlavorText.fromJson(Map<String, dynamic> json) => _$FlavorTextFromJson(json);
}