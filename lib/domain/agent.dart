import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';


int stringToInt(dynamic value) { if (value is int) { return value; } return int.parse(value.toString()); }

@freezed
abstract class Agent with _$Agent {
  const factory Agent({
     @JsonKey(fromJson: stringToInt)
    required int? id,
    String? name,
    String? slug,
    PowerStats? powerstats,
    Appearance? appearance,
    Biography? biography,
    Work? work,
    Connections? connections,
    Images? images,
  }) = _Agent;


  factory Agent.fromJson(Map<String, dynamic> json) =>
      _$AgentFromJson(json);
}

@freezed
abstract class PowerStats with _$PowerStats {
  const factory PowerStats({
    int? intelligence,
    int? strength,
    int? speed,
    int? durability,
    int? power,
    int? combat,
  }) = _PowerStats;
  

  factory PowerStats.fromJson(Map<String, dynamic> json) =>
      _$PowerStatsFromJson(json);
}

@freezed
abstract class Appearance with _$Appearance {
  const factory Appearance({
    String? gender,
    String? race,
    List<String>? height,
    List<String>? weight,
    String? eyeColor,
    String? hairColor,
  }) = _Appearance;

  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json);
}

@freezed
abstract class Biography with _$Biography {
  const factory Biography({
    String? fullName,
    String? alterEgos,
    List<String>? aliases,
    String? placeOfBirth,
    String? firstAppearance,
    String? publisher,
    String? alignment,
  }) = _Biography;

  factory Biography.fromJson(Map<String, dynamic> json) =>
      _$BiographyFromJson(json);
}

@freezed
abstract class Work with _$Work {
  const factory Work({
    String? occupation,
    String? base,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) =>
      _$WorkFromJson(json);
}

@freezed
abstract class Connections with _$Connections {
  const factory Connections({
    String? groupAffiliation,
    String? relatives,
  }) = _Connections;

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);
}

@freezed
abstract class Images with _$Images {
  const factory Images({
    String? xs,
    String? sm,
    String? md,
    String? lg,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) =>
      _$ImagesFromJson(json);
}
