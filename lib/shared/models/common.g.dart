// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DescriptionImpl _$$DescriptionImplFromJson(Map<String, dynamic> json) =>
    _$DescriptionImpl(
      description: json['description'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DescriptionImplToJson(_$DescriptionImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'language': instance.language.toJson(),
    };

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

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'language': instance.language.toJson(),
      'name': instance.name,
    };

_$APIResourceImpl _$$APIResourceImplFromJson(Map<String, dynamic> json) =>
    _$APIResourceImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$APIResourceImplToJson(_$APIResourceImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
