import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.freezed.dart';
part 'common.g.dart';

@freezed
class Description with _$Description {
  const factory Description({
    required String description,
    required NamedAPIResource language,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
class NamedAPIResource with _$NamedAPIResource {
  const factory NamedAPIResource({
    required String name,
    required String url,
  }) = _NamedAPIResource;

  factory NamedAPIResource.fromJson(Map<String, dynamic> json) =>
      _$NamedAPIResourceFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    required String name,
    required String url,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required Language language,
    required String name,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class APIResource with _$APIResource {
  const factory APIResource({
    required String url,
  }) = _APIResource;

  factory APIResource.fromJson(Map<String, dynamic> json) =>
      _$APIResourceFromJson(json);
}
