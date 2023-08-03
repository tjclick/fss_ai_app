// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      TICKER: json['TICKER'] as String,
      NAME: json['NAME'] as String,
      COMPANY: (json['COMPANY'] as num?)?.toDouble(),
      VOLUME: (json['VOLUME'] as num?)?.toDouble(),
      NEWS: (json['NEWS'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'TICKER': instance.TICKER,
      'NAME': instance.NAME,
      'COMPANY': instance.COMPANY,
      'VOLUME': instance.VOLUME,
      'NEWS': instance.NEWS,
    };
