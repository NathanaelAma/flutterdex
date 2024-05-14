import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yapdex/core/data/models/utility/common.dart';

part 'api_model.freezed.dart';

part 'api_model.g.dart';

@freezed
class NamedAPIResourceList with _$NamedAPIResourceList {
  const factory NamedAPIResourceList({
    required int count,
    String? next,
    String? previous,
    required List<NamedAPIResource> results,
  }) = _NamedAPIResourceList;

  factory NamedAPIResourceList.fromJson(Map<String, dynamic> json) =>
      _$NamedAPIResourceListFromJson(json);
}
