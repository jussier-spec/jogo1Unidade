import 'package:json_annotation/json_annotation.dart';

part 'agent_entity.g.dart';

@JsonSerializable()
class AgentEntity {
  @JsonKey(name: AgentDatabaseContract.idColumn)
  final int? id;
  @JsonKey(name: AgentDatabaseContract.nameColumn)
  final String name;
  @JsonKey(name: AgentDatabaseContract.slugColumn)
  final String slug;
  // @JsonKey(name: AgentDatabaseContract.yearColumn)
  // final int year;
  // @JsonKey(name: AgentDatabaseContract.extractColumn)
  // final String? extract;

  AgentEntity({
    required this.id,
    required this.name,
    required this.slug,
    // this.extract,
    // this.imageUrl,
  });

  factory AgentEntity.fromJson(Map<String, dynamic> json) =>
      _$AgentEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AgentEntityToJson(this);
}

abstract class AgentDatabaseContract {
  static const String movieTable = "agent_table";
  static const String idColumn = "id";
  static const String nameColumn = "name";
  static const String slugColumn = "slug";
  // static const String extractColumn = "extract";
  // static const String imgUrl = "img_url";
}
