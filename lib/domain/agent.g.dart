// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Agent _$AgentFromJson(Map<String, dynamic> json) => _Agent(
  id: json['id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  powerstats: json['powerstats'] == null
      ? null
      : PowerStats.fromJson(json['powerstats'] as Map<String, dynamic>),
  appearance: json['appearance'] == null
      ? null
      : Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
  biography: json['biography'] == null
      ? null
      : Biography.fromJson(json['biography'] as Map<String, dynamic>),
  work: json['work'] == null
      ? null
      : Work.fromJson(json['work'] as Map<String, dynamic>),
  connections: json['connections'] == null
      ? null
      : Connections.fromJson(json['connections'] as Map<String, dynamic>),
  images: json['images'] == null
      ? null
      : Images.fromJson(json['images'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AgentToJson(_Agent instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'powerstats': instance.powerstats,
  'appearance': instance.appearance,
  'biography': instance.biography,
  'work': instance.work,
  'connections': instance.connections,
  'images': instance.images,
};

_PowerStats _$PowerStatsFromJson(Map<String, dynamic> json) => _PowerStats(
  intelligence: (json['intelligence'] as num?)?.toInt(),
  strength: (json['strength'] as num?)?.toInt(),
  speed: (json['speed'] as num?)?.toInt(),
  durability: (json['durability'] as num?)?.toInt(),
  power: (json['power'] as num?)?.toInt(),
  combat: (json['combat'] as num?)?.toInt(),
);

Map<String, dynamic> _$PowerStatsToJson(_PowerStats instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };

_Appearance _$AppearanceFromJson(Map<String, dynamic> json) => _Appearance(
  gender: json['gender'] as String?,
  race: json['race'] as String?,
  height: (json['height'] as List<dynamic>?)?.map((e) => e as String).toList(),
  weight: (json['weight'] as List<dynamic>?)?.map((e) => e as String).toList(),
  eyeColor: json['eyeColor'] as String?,
  hairColor: json['hairColor'] as String?,
);

Map<String, dynamic> _$AppearanceToJson(_Appearance instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'hairColor': instance.hairColor,
    };

_Biography _$BiographyFromJson(Map<String, dynamic> json) => _Biography(
  fullName: json['fullName'] as String?,
  alterEgos: json['alterEgos'] as String?,
  aliases: (json['aliases'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  placeOfBirth: json['placeOfBirth'] as String?,
  firstAppearance: json['firstAppearance'] as String?,
  publisher: json['publisher'] as String?,
  alignment: json['alignment'] as String?,
);

Map<String, dynamic> _$BiographyToJson(_Biography instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'alterEgos': instance.alterEgos,
      'aliases': instance.aliases,
      'placeOfBirth': instance.placeOfBirth,
      'firstAppearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };

_Work _$WorkFromJson(Map<String, dynamic> json) => _Work(
  occupation: json['occupation'] as String?,
  base: json['base'] as String?,
);

Map<String, dynamic> _$WorkToJson(_Work instance) => <String, dynamic>{
  'occupation': instance.occupation,
  'base': instance.base,
};

_Connections _$ConnectionsFromJson(Map<String, dynamic> json) => _Connections(
  groupAffiliation: json['groupAffiliation'] as String?,
  relatives: json['relatives'] as String?,
);

Map<String, dynamic> _$ConnectionsToJson(_Connections instance) =>
    <String, dynamic>{
      'groupAffiliation': instance.groupAffiliation,
      'relatives': instance.relatives,
    };

_Images _$ImagesFromJson(Map<String, dynamic> json) => _Images(
  xs: json['xs'] as String?,
  sm: json['sm'] as String?,
  md: json['md'] as String?,
  lg: json['lg'] as String?,
);

Map<String, dynamic> _$ImagesToJson(_Images instance) => <String, dynamic>{
  'xs': instance.xs,
  'sm': instance.sm,
  'md': instance.md,
  'lg': instance.lg,
};
