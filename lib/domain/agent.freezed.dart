// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Agent {

@JsonKey(fromJson: stringToInt) int? get id; String? get name; String? get slug; PowerStats? get powerstats; Appearance? get appearance; Biography? get biography; Work? get work; Connections? get connections; Images? get images;
/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentCopyWith<Agent> get copyWith => _$AgentCopyWithImpl<Agent>(this as Agent, _$identity);

  /// Serializes this Agent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Agent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Agent&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.powerstats, _this.powerstats) || other.powerstats == _this.powerstats)&&(identical(other.appearance, _this.appearance) || other.appearance == _this.appearance)&&(identical(other.biography, _this.biography) || other.biography == _this.biography)&&(identical(other.work, _this.work) || other.work == _this.work)&&(identical(other.connections, _this.connections) || other.connections == _this.connections)&&(identical(other.images, _this.images) || other.images == _this.images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Agent;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.powerstats,_this.appearance,_this.biography,_this.work,_this.connections,_this.images);
}

@override
String toString() {
  final _this = this as Agent;
  return 'Agent(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, powerstats: ${_this.powerstats}, appearance: ${_this.appearance}, biography: ${_this.biography}, work: ${_this.work}, connections: ${_this.connections}, images: ${_this.images})';
}


}

/// @nodoc
abstract mixin class $AgentCopyWith<$Res>  {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) _then) = _$AgentCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: stringToInt) int? id, String? name, String? slug, PowerStats? powerstats, Appearance? appearance, Biography? biography, Work? work, Connections? connections, Images? images
});


$PowerStatsCopyWith<$Res>? get powerstats;$AppearanceCopyWith<$Res>? get appearance;$BiographyCopyWith<$Res>? get biography;$WorkCopyWith<$Res>? get work;$ConnectionsCopyWith<$Res>? get connections;$ImagesCopyWith<$Res>? get images;

}
/// @nodoc
class _$AgentCopyWithImpl<$Res>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._self, this._then);

  final Agent _self;
  final $Res Function(Agent) _then;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? powerstats = freezed,Object? appearance = freezed,Object? biography = freezed,Object? work = freezed,Object? connections = freezed,Object? images = freezed,}) {
  return _then(Agent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,powerstats: freezed == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerStats?,appearance: freezed == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as Appearance?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as Biography?,work: freezed == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as Work?,connections: freezed == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as Connections?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as Images?,
  ));
}
/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerStatsCopyWith<$Res>? get powerstats {
    if (_self.powerstats == null) {
    return null;
  }

  return $PowerStatsCopyWith<$Res>(_self.powerstats!, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceCopyWith<$Res>? get appearance {
    if (_self.appearance == null) {
    return null;
  }

  return $AppearanceCopyWith<$Res>(_self.appearance!, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyCopyWith<$Res>? get biography {
    if (_self.biography == null) {
    return null;
  }

  return $BiographyCopyWith<$Res>(_self.biography!, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkCopyWith<$Res>? get work {
    if (_self.work == null) {
    return null;
  }

  return $WorkCopyWith<$Res>(_self.work!, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsCopyWith<$Res>? get connections {
    if (_self.connections == null) {
    return null;
  }

  return $ConnectionsCopyWith<$Res>(_self.connections!, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagesCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $ImagesCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [Agent].
extension AgentPatterns on Agent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Agent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Agent value)  $default,){
final _that = this;
switch (_that) {
case _Agent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Agent value)?  $default,){
final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: stringToInt)  int? id,  String? name,  String? slug,  PowerStats? powerstats,  Appearance? appearance,  Biography? biography,  Work? work,  Connections? connections,  Images? images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: stringToInt)  int? id,  String? name,  String? slug,  PowerStats? powerstats,  Appearance? appearance,  Biography? biography,  Work? work,  Connections? connections,  Images? images)  $default,) {final _that = this;
switch (_that) {
case _Agent():
return $default(_that.id,_that.name,_that.slug,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: stringToInt)  int? id,  String? name,  String? slug,  PowerStats? powerstats,  Appearance? appearance,  Biography? biography,  Work? work,  Connections? connections,  Images? images)?  $default,) {final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Agent implements Agent {
  const _Agent({@JsonKey(fromJson: stringToInt) required this.id, this.name, this.slug, this.powerstats, this.appearance, this.biography, this.work, this.connections, this.images});
  factory _Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);

@override@JsonKey(fromJson: stringToInt) final  int? id;
@override final  String? name;
@override final  String? slug;
@override final  PowerStats? powerstats;
@override final  Appearance? appearance;
@override final  Biography? biography;
@override final  Work? work;
@override final  Connections? connections;
@override final  Images? images;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentCopyWith<_Agent> get copyWith => __$AgentCopyWithImpl<_Agent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Agent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.powerstats, powerstats) || other.powerstats == powerstats)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.work, work) || other.work == work)&&(identical(other.connections, connections) || other.connections == connections)&&(identical(other.images, images) || other.images == images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,powerstats,appearance,biography,work,connections,images);
}

@override
String toString() {
    return 'Agent(id: $id, name: $name, slug: $slug, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
}


}

/// @nodoc
abstract mixin class _$AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$AgentCopyWith(_Agent value, $Res Function(_Agent) _then) = __$AgentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: stringToInt) int? id, String? name, String? slug, PowerStats? powerstats, Appearance? appearance, Biography? biography, Work? work, Connections? connections, Images? images
});


@override $PowerStatsCopyWith<$Res>? get powerstats;@override $AppearanceCopyWith<$Res>? get appearance;@override $BiographyCopyWith<$Res>? get biography;@override $WorkCopyWith<$Res>? get work;@override $ConnectionsCopyWith<$Res>? get connections;@override $ImagesCopyWith<$Res>? get images;

}
/// @nodoc
class __$AgentCopyWithImpl<$Res>
    implements _$AgentCopyWith<$Res> {
  __$AgentCopyWithImpl(this._self, this._then);

  final _Agent _self;
  final $Res Function(_Agent) _then;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? powerstats = freezed,Object? appearance = freezed,Object? biography = freezed,Object? work = freezed,Object? connections = freezed,Object? images = freezed,}) {
  return _then(_Agent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,powerstats: freezed == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerStats?,appearance: freezed == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as Appearance?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as Biography?,work: freezed == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as Work?,connections: freezed == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as Connections?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as Images?,
  ));
}

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerStatsCopyWith<$Res>? get powerstats {
    if (_self.powerstats == null) {
    return null;
  }

  return $PowerStatsCopyWith<$Res>(_self.powerstats!, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceCopyWith<$Res>? get appearance {
    if (_self.appearance == null) {
    return null;
  }

  return $AppearanceCopyWith<$Res>(_self.appearance!, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyCopyWith<$Res>? get biography {
    if (_self.biography == null) {
    return null;
  }

  return $BiographyCopyWith<$Res>(_self.biography!, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkCopyWith<$Res>? get work {
    if (_self.work == null) {
    return null;
  }

  return $WorkCopyWith<$Res>(_self.work!, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsCopyWith<$Res>? get connections {
    if (_self.connections == null) {
    return null;
  }

  return $ConnectionsCopyWith<$Res>(_self.connections!, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImagesCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $ImagesCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// @nodoc
mixin _$PowerStats {

 int? get intelligence; int? get strength; int? get speed; int? get durability; int? get power; int? get combat;
/// Create a copy of PowerStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PowerStatsCopyWith<PowerStats> get copyWith => _$PowerStatsCopyWithImpl<PowerStats>(this as PowerStats, _$identity);

  /// Serializes this PowerStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PowerStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PowerStats&&(identical(other.intelligence, _this.intelligence) || other.intelligence == _this.intelligence)&&(identical(other.strength, _this.strength) || other.strength == _this.strength)&&(identical(other.speed, _this.speed) || other.speed == _this.speed)&&(identical(other.durability, _this.durability) || other.durability == _this.durability)&&(identical(other.power, _this.power) || other.power == _this.power)&&(identical(other.combat, _this.combat) || other.combat == _this.combat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PowerStats;
  return Object.hash(runtimeType,_this.intelligence,_this.strength,_this.speed,_this.durability,_this.power,_this.combat);
}

@override
String toString() {
  final _this = this as PowerStats;
  return 'PowerStats(intelligence: ${_this.intelligence}, strength: ${_this.strength}, speed: ${_this.speed}, durability: ${_this.durability}, power: ${_this.power}, combat: ${_this.combat})';
}


}

/// @nodoc
abstract mixin class $PowerStatsCopyWith<$Res>  {
  factory $PowerStatsCopyWith(PowerStats value, $Res Function(PowerStats) _then) = _$PowerStatsCopyWithImpl;
@useResult
$Res call({
 int? intelligence, int? strength, int? speed, int? durability, int? power, int? combat
});




}
/// @nodoc
class _$PowerStatsCopyWithImpl<$Res>
    implements $PowerStatsCopyWith<$Res> {
  _$PowerStatsCopyWithImpl(this._self, this._then);

  final PowerStats _self;
  final $Res Function(PowerStats) _then;

/// Create a copy of PowerStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intelligence = freezed,Object? strength = freezed,Object? speed = freezed,Object? durability = freezed,Object? power = freezed,Object? combat = freezed,}) {
  return _then(PowerStats(
intelligence: freezed == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int?,strength: freezed == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int?,durability: freezed == durability ? _self.durability : durability // ignore: cast_nullable_to_non_nullable
as int?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,combat: freezed == combat ? _self.combat : combat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PowerStats].
extension PowerStatsPatterns on PowerStats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PowerStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PowerStats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PowerStats value)  $default,){
final _that = this;
switch (_that) {
case _PowerStats():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PowerStats value)?  $default,){
final _that = this;
switch (_that) {
case _PowerStats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? intelligence,  int? strength,  int? speed,  int? durability,  int? power,  int? combat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PowerStats() when $default != null:
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? intelligence,  int? strength,  int? speed,  int? durability,  int? power,  int? combat)  $default,) {final _that = this;
switch (_that) {
case _PowerStats():
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? intelligence,  int? strength,  int? speed,  int? durability,  int? power,  int? combat)?  $default,) {final _that = this;
switch (_that) {
case _PowerStats() when $default != null:
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PowerStats implements PowerStats {
  const _PowerStats({this.intelligence, this.strength, this.speed, this.durability, this.power, this.combat});
  factory _PowerStats.fromJson(Map<String, dynamic> json) => _$PowerStatsFromJson(json);

@override final  int? intelligence;
@override final  int? strength;
@override final  int? speed;
@override final  int? durability;
@override final  int? power;
@override final  int? combat;

/// Create a copy of PowerStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PowerStatsCopyWith<_PowerStats> get copyWith => __$PowerStatsCopyWithImpl<_PowerStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PowerStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PowerStats&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.durability, durability) || other.durability == durability)&&(identical(other.power, power) || other.power == power)&&(identical(other.combat, combat) || other.combat == combat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,intelligence,strength,speed,durability,power,combat);
}

@override
String toString() {
    return 'PowerStats(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
}


}

/// @nodoc
abstract mixin class _$PowerStatsCopyWith<$Res> implements $PowerStatsCopyWith<$Res> {
  factory _$PowerStatsCopyWith(_PowerStats value, $Res Function(_PowerStats) _then) = __$PowerStatsCopyWithImpl;
@override @useResult
$Res call({
 int? intelligence, int? strength, int? speed, int? durability, int? power, int? combat
});




}
/// @nodoc
class __$PowerStatsCopyWithImpl<$Res>
    implements _$PowerStatsCopyWith<$Res> {
  __$PowerStatsCopyWithImpl(this._self, this._then);

  final _PowerStats _self;
  final $Res Function(_PowerStats) _then;

/// Create a copy of PowerStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intelligence = freezed,Object? strength = freezed,Object? speed = freezed,Object? durability = freezed,Object? power = freezed,Object? combat = freezed,}) {
  return _then(_PowerStats(
intelligence: freezed == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int?,strength: freezed == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int?,durability: freezed == durability ? _self.durability : durability // ignore: cast_nullable_to_non_nullable
as int?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,combat: freezed == combat ? _self.combat : combat // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Appearance {

 String? get gender; String? get race; List<String>? get height; List<String>? get weight; String? get eyeColor; String? get hairColor;
/// Create a copy of Appearance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceCopyWith<Appearance> get copyWith => _$AppearanceCopyWithImpl<Appearance>(this as Appearance, _$identity);

  /// Serializes this Appearance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Appearance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Appearance&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.race, _this.race) || other.race == _this.race)&&const DeepCollectionEquality().equals(other.height, _this.height)&&const DeepCollectionEquality().equals(other.weight, _this.weight)&&(identical(other.eyeColor, _this.eyeColor) || other.eyeColor == _this.eyeColor)&&(identical(other.hairColor, _this.hairColor) || other.hairColor == _this.hairColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Appearance;
  return Object.hash(runtimeType,_this.gender,_this.race,const DeepCollectionEquality().hash(_this.height),const DeepCollectionEquality().hash(_this.weight),_this.eyeColor,_this.hairColor);
}

@override
String toString() {
  final _this = this as Appearance;
  return 'Appearance(gender: ${_this.gender}, race: ${_this.race}, height: ${_this.height}, weight: ${_this.weight}, eyeColor: ${_this.eyeColor}, hairColor: ${_this.hairColor})';
}


}

/// @nodoc
abstract mixin class $AppearanceCopyWith<$Res>  {
  factory $AppearanceCopyWith(Appearance value, $Res Function(Appearance) _then) = _$AppearanceCopyWithImpl;
@useResult
$Res call({
 String? gender, String? race, List<String>? height, List<String>? weight, String? eyeColor, String? hairColor
});




}
/// @nodoc
class _$AppearanceCopyWithImpl<$Res>
    implements $AppearanceCopyWith<$Res> {
  _$AppearanceCopyWithImpl(this._self, this._then);

  final Appearance _self;
  final $Res Function(Appearance) _then;

/// Create a copy of Appearance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? race = freezed,Object? height = freezed,Object? weight = freezed,Object? eyeColor = freezed,Object? hairColor = freezed,}) {
  return _then(Appearance(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as List<String>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as List<String>?,eyeColor: freezed == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String?,hairColor: freezed == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Appearance].
extension AppearancePatterns on Appearance {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Appearance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Appearance() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Appearance value)  $default,){
final _that = this;
switch (_that) {
case _Appearance():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Appearance value)?  $default,){
final _that = this;
switch (_that) {
case _Appearance() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gender,  String? race,  List<String>? height,  List<String>? weight,  String? eyeColor,  String? hairColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Appearance() when $default != null:
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gender,  String? race,  List<String>? height,  List<String>? weight,  String? eyeColor,  String? hairColor)  $default,) {final _that = this;
switch (_that) {
case _Appearance():
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gender,  String? race,  List<String>? height,  List<String>? weight,  String? eyeColor,  String? hairColor)?  $default,) {final _that = this;
switch (_that) {
case _Appearance() when $default != null:
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Appearance implements Appearance {
  const _Appearance({this.gender, this.race,  List<String>? height,  List<String>? weight, this.eyeColor, this.hairColor}): _height = height,_weight = weight;
  factory _Appearance.fromJson(Map<String, dynamic> json) => _$AppearanceFromJson(json);

@override final  String? gender;
@override final  String? race;
 final  List<String>? _height;
@override List<String>? get height {
  final value = _height;
  if (value == null) return null;
  if (_height is EqualUnmodifiableListView) return _height;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _weight;
@override List<String>? get weight {
  final value = _weight;
  if (value == null) return null;
  if (_weight is EqualUnmodifiableListView) return _weight;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? eyeColor;
@override final  String? hairColor;

/// Create a copy of Appearance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppearanceCopyWith<_Appearance> get copyWith => __$AppearanceCopyWithImpl<_Appearance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppearanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Appearance&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.race, race) || other.race == race)&&const DeepCollectionEquality().equals(other.height, _height)&&const DeepCollectionEquality().equals(other.weight, _weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,gender,race,const DeepCollectionEquality().hash(_height),const DeepCollectionEquality().hash(_weight),eyeColor,hairColor);
}

@override
String toString() {
    return 'Appearance(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
}


}

/// @nodoc
abstract mixin class _$AppearanceCopyWith<$Res> implements $AppearanceCopyWith<$Res> {
  factory _$AppearanceCopyWith(_Appearance value, $Res Function(_Appearance) _then) = __$AppearanceCopyWithImpl;
@override @useResult
$Res call({
 String? gender, String? race, List<String>? height, List<String>? weight, String? eyeColor, String? hairColor
});




}
/// @nodoc
class __$AppearanceCopyWithImpl<$Res>
    implements _$AppearanceCopyWith<$Res> {
  __$AppearanceCopyWithImpl(this._self, this._then);

  final _Appearance _self;
  final $Res Function(_Appearance) _then;

/// Create a copy of Appearance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? race = freezed,Object? height = freezed,Object? weight = freezed,Object? eyeColor = freezed,Object? hairColor = freezed,}) {
  return _then(_Appearance(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self._height : height // ignore: cast_nullable_to_non_nullable
as List<String>?,weight: freezed == weight ? _self._weight : weight // ignore: cast_nullable_to_non_nullable
as List<String>?,eyeColor: freezed == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String?,hairColor: freezed == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Biography {

 String? get fullName; String? get alterEgos; List<String>? get aliases; String? get placeOfBirth; String? get firstAppearance; String? get publisher; String? get alignment;
/// Create a copy of Biography
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographyCopyWith<Biography> get copyWith => _$BiographyCopyWithImpl<Biography>(this as Biography, _$identity);

  /// Serializes this Biography to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Biography;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Biography&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.alterEgos, _this.alterEgos) || other.alterEgos == _this.alterEgos)&&const DeepCollectionEquality().equals(other.aliases, _this.aliases)&&(identical(other.placeOfBirth, _this.placeOfBirth) || other.placeOfBirth == _this.placeOfBirth)&&(identical(other.firstAppearance, _this.firstAppearance) || other.firstAppearance == _this.firstAppearance)&&(identical(other.publisher, _this.publisher) || other.publisher == _this.publisher)&&(identical(other.alignment, _this.alignment) || other.alignment == _this.alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Biography;
  return Object.hash(runtimeType,_this.fullName,_this.alterEgos,const DeepCollectionEquality().hash(_this.aliases),_this.placeOfBirth,_this.firstAppearance,_this.publisher,_this.alignment);
}

@override
String toString() {
  final _this = this as Biography;
  return 'Biography(fullName: ${_this.fullName}, alterEgos: ${_this.alterEgos}, aliases: ${_this.aliases}, placeOfBirth: ${_this.placeOfBirth}, firstAppearance: ${_this.firstAppearance}, publisher: ${_this.publisher}, alignment: ${_this.alignment})';
}


}

/// @nodoc
abstract mixin class $BiographyCopyWith<$Res>  {
  factory $BiographyCopyWith(Biography value, $Res Function(Biography) _then) = _$BiographyCopyWithImpl;
@useResult
$Res call({
 String? fullName, String? alterEgos, List<String>? aliases, String? placeOfBirth, String? firstAppearance, String? publisher, String? alignment
});




}
/// @nodoc
class _$BiographyCopyWithImpl<$Res>
    implements $BiographyCopyWith<$Res> {
  _$BiographyCopyWithImpl(this._self, this._then);

  final Biography _self;
  final $Res Function(Biography) _then;

/// Create a copy of Biography
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? alterEgos = freezed,Object? aliases = freezed,Object? placeOfBirth = freezed,Object? firstAppearance = freezed,Object? publisher = freezed,Object? alignment = freezed,}) {
  return _then(Biography(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,alterEgos: freezed == alterEgos ? _self.alterEgos : alterEgos // ignore: cast_nullable_to_non_nullable
as String?,aliases: freezed == aliases ? _self.aliases : aliases // ignore: cast_nullable_to_non_nullable
as List<String>?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,firstAppearance: freezed == firstAppearance ? _self.firstAppearance : firstAppearance // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,alignment: freezed == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Biography].
extension BiographyPatterns on Biography {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Biography value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Biography() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Biography value)  $default,){
final _that = this;
switch (_that) {
case _Biography():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Biography value)?  $default,){
final _that = this;
switch (_that) {
case _Biography() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fullName,  String? alterEgos,  List<String>? aliases,  String? placeOfBirth,  String? firstAppearance,  String? publisher,  String? alignment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Biography() when $default != null:
return $default(_that.fullName,_that.alterEgos,_that.aliases,_that.placeOfBirth,_that.firstAppearance,_that.publisher,_that.alignment);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fullName,  String? alterEgos,  List<String>? aliases,  String? placeOfBirth,  String? firstAppearance,  String? publisher,  String? alignment)  $default,) {final _that = this;
switch (_that) {
case _Biography():
return $default(_that.fullName,_that.alterEgos,_that.aliases,_that.placeOfBirth,_that.firstAppearance,_that.publisher,_that.alignment);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fullName,  String? alterEgos,  List<String>? aliases,  String? placeOfBirth,  String? firstAppearance,  String? publisher,  String? alignment)?  $default,) {final _that = this;
switch (_that) {
case _Biography() when $default != null:
return $default(_that.fullName,_that.alterEgos,_that.aliases,_that.placeOfBirth,_that.firstAppearance,_that.publisher,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Biography implements Biography {
  const _Biography({this.fullName, this.alterEgos,  List<String>? aliases, this.placeOfBirth, this.firstAppearance, this.publisher, this.alignment}): _aliases = aliases;
  factory _Biography.fromJson(Map<String, dynamic> json) => _$BiographyFromJson(json);

@override final  String? fullName;
@override final  String? alterEgos;
 final  List<String>? _aliases;
@override List<String>? get aliases {
  final value = _aliases;
  if (value == null) return null;
  if (_aliases is EqualUnmodifiableListView) return _aliases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? placeOfBirth;
@override final  String? firstAppearance;
@override final  String? publisher;
@override final  String? alignment;

/// Create a copy of Biography
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographyCopyWith<_Biography> get copyWith => __$BiographyCopyWithImpl<_Biography>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Biography&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.alterEgos, alterEgos) || other.alterEgos == alterEgos)&&const DeepCollectionEquality().equals(other.aliases, _aliases)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.firstAppearance, firstAppearance) || other.firstAppearance == firstAppearance)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fullName,alterEgos,const DeepCollectionEquality().hash(_aliases),placeOfBirth,firstAppearance,publisher,alignment);
}

@override
String toString() {
    return 'Biography(fullName: $fullName, alterEgos: $alterEgos, aliases: $aliases, placeOfBirth: $placeOfBirth, firstAppearance: $firstAppearance, publisher: $publisher, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$BiographyCopyWith<$Res> implements $BiographyCopyWith<$Res> {
  factory _$BiographyCopyWith(_Biography value, $Res Function(_Biography) _then) = __$BiographyCopyWithImpl;
@override @useResult
$Res call({
 String? fullName, String? alterEgos, List<String>? aliases, String? placeOfBirth, String? firstAppearance, String? publisher, String? alignment
});




}
/// @nodoc
class __$BiographyCopyWithImpl<$Res>
    implements _$BiographyCopyWith<$Res> {
  __$BiographyCopyWithImpl(this._self, this._then);

  final _Biography _self;
  final $Res Function(_Biography) _then;

/// Create a copy of Biography
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? alterEgos = freezed,Object? aliases = freezed,Object? placeOfBirth = freezed,Object? firstAppearance = freezed,Object? publisher = freezed,Object? alignment = freezed,}) {
  return _then(_Biography(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,alterEgos: freezed == alterEgos ? _self.alterEgos : alterEgos // ignore: cast_nullable_to_non_nullable
as String?,aliases: freezed == aliases ? _self._aliases : aliases // ignore: cast_nullable_to_non_nullable
as List<String>?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,firstAppearance: freezed == firstAppearance ? _self.firstAppearance : firstAppearance // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,alignment: freezed == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Work {

 String? get occupation; String? get base;
/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkCopyWith<Work> get copyWith => _$WorkCopyWithImpl<Work>(this as Work, _$identity);

  /// Serializes this Work to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Work;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Work&&(identical(other.occupation, _this.occupation) || other.occupation == _this.occupation)&&(identical(other.base, _this.base) || other.base == _this.base));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Work;
  return Object.hash(runtimeType,_this.occupation,_this.base);
}

@override
String toString() {
  final _this = this as Work;
  return 'Work(occupation: ${_this.occupation}, base: ${_this.base})';
}


}

/// @nodoc
abstract mixin class $WorkCopyWith<$Res>  {
  factory $WorkCopyWith(Work value, $Res Function(Work) _then) = _$WorkCopyWithImpl;
@useResult
$Res call({
 String? occupation, String? base
});




}
/// @nodoc
class _$WorkCopyWithImpl<$Res>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._self, this._then);

  final Work _self;
  final $Res Function(Work) _then;

/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occupation = freezed,Object? base = freezed,}) {
  return _then(Work(
occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Work].
extension WorkPatterns on Work {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Work value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Work value)  $default,){
final _that = this;
switch (_that) {
case _Work():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Work value)?  $default,){
final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? occupation,  String? base)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that.occupation,_that.base);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? occupation,  String? base)  $default,) {final _that = this;
switch (_that) {
case _Work():
return $default(_that.occupation,_that.base);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? occupation,  String? base)?  $default,) {final _that = this;
switch (_that) {
case _Work() when $default != null:
return $default(_that.occupation,_that.base);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Work implements Work {
  const _Work({this.occupation, this.base});
  factory _Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

@override final  String? occupation;
@override final  String? base;

/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkCopyWith<_Work> get copyWith => __$WorkCopyWithImpl<_Work>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Work&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.base, base) || other.base == base));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,occupation,base);
}

@override
String toString() {
    return 'Work(occupation: $occupation, base: $base)';
}


}

/// @nodoc
abstract mixin class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) _then) = __$WorkCopyWithImpl;
@override @useResult
$Res call({
 String? occupation, String? base
});




}
/// @nodoc
class __$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(this._self, this._then);

  final _Work _self;
  final $Res Function(_Work) _then;

/// Create a copy of Work
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occupation = freezed,Object? base = freezed,}) {
  return _then(_Work(
occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Connections {

 String? get groupAffiliation; String? get relatives;
/// Create a copy of Connections
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionsCopyWith<Connections> get copyWith => _$ConnectionsCopyWithImpl<Connections>(this as Connections, _$identity);

  /// Serializes this Connections to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Connections;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connections&&(identical(other.groupAffiliation, _this.groupAffiliation) || other.groupAffiliation == _this.groupAffiliation)&&(identical(other.relatives, _this.relatives) || other.relatives == _this.relatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Connections;
  return Object.hash(runtimeType,_this.groupAffiliation,_this.relatives);
}

@override
String toString() {
  final _this = this as Connections;
  return 'Connections(groupAffiliation: ${_this.groupAffiliation}, relatives: ${_this.relatives})';
}


}

/// @nodoc
abstract mixin class $ConnectionsCopyWith<$Res>  {
  factory $ConnectionsCopyWith(Connections value, $Res Function(Connections) _then) = _$ConnectionsCopyWithImpl;
@useResult
$Res call({
 String? groupAffiliation, String? relatives
});




}
/// @nodoc
class _$ConnectionsCopyWithImpl<$Res>
    implements $ConnectionsCopyWith<$Res> {
  _$ConnectionsCopyWithImpl(this._self, this._then);

  final Connections _self;
  final $Res Function(Connections) _then;

/// Create a copy of Connections
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupAffiliation = freezed,Object? relatives = freezed,}) {
  return _then(Connections(
groupAffiliation: freezed == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String?,relatives: freezed == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Connections].
extension ConnectionsPatterns on Connections {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Connections value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Connections() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Connections value)  $default,){
final _that = this;
switch (_that) {
case _Connections():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Connections value)?  $default,){
final _that = this;
switch (_that) {
case _Connections() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? groupAffiliation,  String? relatives)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Connections() when $default != null:
return $default(_that.groupAffiliation,_that.relatives);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? groupAffiliation,  String? relatives)  $default,) {final _that = this;
switch (_that) {
case _Connections():
return $default(_that.groupAffiliation,_that.relatives);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? groupAffiliation,  String? relatives)?  $default,) {final _that = this;
switch (_that) {
case _Connections() when $default != null:
return $default(_that.groupAffiliation,_that.relatives);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Connections implements Connections {
  const _Connections({this.groupAffiliation, this.relatives});
  factory _Connections.fromJson(Map<String, dynamic> json) => _$ConnectionsFromJson(json);

@override final  String? groupAffiliation;
@override final  String? relatives;

/// Create a copy of Connections
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionsCopyWith<_Connections> get copyWith => __$ConnectionsCopyWithImpl<_Connections>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connections&&(identical(other.groupAffiliation, groupAffiliation) || other.groupAffiliation == groupAffiliation)&&(identical(other.relatives, relatives) || other.relatives == relatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,groupAffiliation,relatives);
}

@override
String toString() {
    return 'Connections(groupAffiliation: $groupAffiliation, relatives: $relatives)';
}


}

/// @nodoc
abstract mixin class _$ConnectionsCopyWith<$Res> implements $ConnectionsCopyWith<$Res> {
  factory _$ConnectionsCopyWith(_Connections value, $Res Function(_Connections) _then) = __$ConnectionsCopyWithImpl;
@override @useResult
$Res call({
 String? groupAffiliation, String? relatives
});




}
/// @nodoc
class __$ConnectionsCopyWithImpl<$Res>
    implements _$ConnectionsCopyWith<$Res> {
  __$ConnectionsCopyWithImpl(this._self, this._then);

  final _Connections _self;
  final $Res Function(_Connections) _then;

/// Create a copy of Connections
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupAffiliation = freezed,Object? relatives = freezed,}) {
  return _then(_Connections(
groupAffiliation: freezed == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String?,relatives: freezed == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Images {

 String? get xs; String? get sm; String? get md; String? get lg;
/// Create a copy of Images
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagesCopyWith<Images> get copyWith => _$ImagesCopyWithImpl<Images>(this as Images, _$identity);

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Images;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Images&&(identical(other.xs, _this.xs) || other.xs == _this.xs)&&(identical(other.sm, _this.sm) || other.sm == _this.sm)&&(identical(other.md, _this.md) || other.md == _this.md)&&(identical(other.lg, _this.lg) || other.lg == _this.lg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Images;
  return Object.hash(runtimeType,_this.xs,_this.sm,_this.md,_this.lg);
}

@override
String toString() {
  final _this = this as Images;
  return 'Images(xs: ${_this.xs}, sm: ${_this.sm}, md: ${_this.md}, lg: ${_this.lg})';
}


}

/// @nodoc
abstract mixin class $ImagesCopyWith<$Res>  {
  factory $ImagesCopyWith(Images value, $Res Function(Images) _then) = _$ImagesCopyWithImpl;
@useResult
$Res call({
 String? xs, String? sm, String? md, String? lg
});




}
/// @nodoc
class _$ImagesCopyWithImpl<$Res>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._self, this._then);

  final Images _self;
  final $Res Function(Images) _then;

/// Create a copy of Images
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xs = freezed,Object? sm = freezed,Object? md = freezed,Object? lg = freezed,}) {
  return _then(Images(
xs: freezed == xs ? _self.xs : xs // ignore: cast_nullable_to_non_nullable
as String?,sm: freezed == sm ? _self.sm : sm // ignore: cast_nullable_to_non_nullable
as String?,md: freezed == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as String?,lg: freezed == lg ? _self.lg : lg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Images].
extension ImagesPatterns on Images {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Images value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Images() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Images value)  $default,){
final _that = this;
switch (_that) {
case _Images():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Images value)?  $default,){
final _that = this;
switch (_that) {
case _Images() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? xs,  String? sm,  String? md,  String? lg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Images() when $default != null:
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? xs,  String? sm,  String? md,  String? lg)  $default,) {final _that = this;
switch (_that) {
case _Images():
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? xs,  String? sm,  String? md,  String? lg)?  $default,) {final _that = this;
switch (_that) {
case _Images() when $default != null:
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Images implements Images {
  const _Images({this.xs, this.sm, this.md, this.lg});
  factory _Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

@override final  String? xs;
@override final  String? sm;
@override final  String? md;
@override final  String? lg;

/// Create a copy of Images
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagesCopyWith<_Images> get copyWith => __$ImagesCopyWithImpl<_Images>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImagesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Images&&(identical(other.xs, xs) || other.xs == xs)&&(identical(other.sm, sm) || other.sm == sm)&&(identical(other.md, md) || other.md == md)&&(identical(other.lg, lg) || other.lg == lg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,xs,sm,md,lg);
}

@override
String toString() {
    return 'Images(xs: $xs, sm: $sm, md: $md, lg: $lg)';
}


}

/// @nodoc
abstract mixin class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) _then) = __$ImagesCopyWithImpl;
@override @useResult
$Res call({
 String? xs, String? sm, String? md, String? lg
});




}
/// @nodoc
class __$ImagesCopyWithImpl<$Res>
    implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(this._self, this._then);

  final _Images _self;
  final $Res Function(_Images) _then;

/// Create a copy of Images
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xs = freezed,Object? sm = freezed,Object? md = freezed,Object? lg = freezed,}) {
  return _then(_Images(
xs: freezed == xs ? _self.xs : xs // ignore: cast_nullable_to_non_nullable
as String?,sm: freezed == sm ? _self.sm : sm // ignore: cast_nullable_to_non_nullable
as String?,md: freezed == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as String?,lg: freezed == lg ? _self.lg : lg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
