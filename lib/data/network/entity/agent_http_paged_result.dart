import 'package:json_annotation/json_annotation.dart';

part 'agent_http_paged_result.g.dart';

@JsonSerializable()
class AgentHttpPagedResult {
  int first;
  dynamic prev;
  int next;
  int last;
  int pages;
  int items;
  List<AgentEntity> data;

  AgentHttpPagedResult({
    required this.first,
    required this.prev,
    required this.next,
    required this.last,
    required this.pages,
    required this.items,
    required this.data,
  });

  factory AgentHttpPagedResult.fromJson(Map<String, dynamic> json) => _$AgentHttpPagedResultFromJson(json);
}

@JsonSerializable()
class AgentEntity {
  String name;
  int id;

  AgentEntity({
    required this.name,
    required this.id
  });

  factory AgentEntity.fromJson(Map<String, dynamic> json) => _$AgentEntityFromJson(json);

  @override
  String toString() {
    return 'AgentEntityEntity';
  }
}