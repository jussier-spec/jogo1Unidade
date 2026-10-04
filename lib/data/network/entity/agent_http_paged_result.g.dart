// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_http_paged_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentHttpPagedResult _$AgentHttpPagedResultFromJson(
  Map<String, dynamic> json,
) => AgentHttpPagedResult(
  first: (json['first'] as num).toInt(),
  prev: json['prev'],
  next: (json['next'] as num).toInt(),
  last: (json['last'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  items: (json['items'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => Agent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AgentHttpPagedResultToJson(
  AgentHttpPagedResult instance,
) => <String, dynamic>{
  'first': instance.first,
  'prev': instance.prev,
  'next': instance.next,
  'last': instance.last,
  'pages': instance.pages,
  'items': instance.items,
  'data': instance.data,
};
