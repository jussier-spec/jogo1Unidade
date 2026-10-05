import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

int stringToInt(dynamic value) {
  if (value is int) {
    return value;
  }

  return int.parse(value.toString());
}

@freezed
abstract class Agent with _$Agent {
  const factory Agent({
    @JsonKey(fromJson: stringToInt)
    required int id,
    String? name,
    String? slug,
    PowerStats? powerstats,
    Appearance? appearance,
    Biography? biography,
    Work? work,
    Connections? connections,
    Images? images,
  }) = _Agent;

  // API
  factory Agent.fromJson(Map<String, dynamic> json) =>
      _$AgentFromJson(json);

  // SQLite
  factory Agent.fromDatabase({
    required Map<String, dynamic> agent,
    Map<String, dynamic>? powerstats,
    Map<String, dynamic>? appearance,
    Map<String, dynamic>? biography,
    Map<String, dynamic>? work,
    Map<String, dynamic>? connections,
    Map<String, dynamic>? images,
    List<Map<String, dynamic>>? aliases,
  }) {
    return Agent(
      id: agent['id'] as int,
      name: agent['name'] as String?,
      slug: agent['slug'] as String?,

      powerstats: powerstats != null
          ? PowerStats.fromDatabase(powerstats)
          : null,

      appearance: appearance != null
          ? Appearance.fromDatabase(appearance)
          : null,

      biography: biography != null
          ? Biography.fromDatabase(
              biography,
              aliases: aliases,
            )
          : null,

      work: work != null
          ? Work.fromDatabase(work)
          : null,

      connections: connections != null
          ? Connections.fromDatabase(connections)
          : null,

      images: images != null
          ? Images.fromDatabase(images)
          : null,
    );
  }
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

  factory PowerStats.fromDatabase(Map<String, dynamic> map) {
    return PowerStats(
      intelligence: map['intelligence'] as int?,
      strength: map['strength'] as int?,
      speed: map['speed'] as int?,
      durability: map['durability'] as int?,
      power: map['power'] as int?,
      combat: map['combat'] as int?,
    );
  }
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

  factory Appearance.fromDatabase(Map<String, dynamic> map) {
    return Appearance(
      gender: map['gender'] as String?,
      race: map['race'] as String?,
      height: map['height'] != null
          ? (map['height'] as String).split(', ')
          : null,
      weight: map['weight'] != null
          ? (map['weight'] as String).split(', ')
          : null,
      eyeColor: map['eye_color'] as String?,
      hairColor: map['hair_color'] as String?,
    );
  }
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

  factory Biography.fromDatabase(
    Map<String, dynamic> map, {
    List<Map<String, dynamic>>? aliases,
  }) {
    return Biography(
      fullName: map['full_name'] as String?,
      alterEgos: map['alter_egos'] as String?,
      aliases: aliases
          ?.map((item) => item['alias'] as String)
          .toList(),
      placeOfBirth: map['place_of_birth'] as String?,
      firstAppearance: map['first_appearance'] as String?,
      publisher: map['publisher'] as String?,
      alignment: map['alignment'] as String?,
    );
  }
}

@freezed
abstract class Work with _$Work {
  const factory Work({
    String? occupation,
    String? base,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) =>
      _$WorkFromJson(json);

  factory Work.fromDatabase(Map<String, dynamic> map) {
    return Work(
      occupation: map['occupation'] as String?,
      base: map['base'] as String?,
    );
  }
}

@freezed
abstract class Connections with _$Connections {
  const factory Connections({
    String? groupAffiliation,
    String? relatives,
  }) = _Connections;

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);

  factory Connections.fromDatabase(Map<String, dynamic> map) {
    return Connections(
      groupAffiliation: map['group_affiliation'] as String?,
      relatives: map['relatives'] as String?,
    );
  }
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

  factory Images.fromDatabase(Map<String, dynamic> map) {
    return Images(
      xs: map['xs'] as String?,
      sm: map['sm'] as String?,
      md: map['md'] as String?,
      lg: map['lg'] as String?,
    );
  }
}