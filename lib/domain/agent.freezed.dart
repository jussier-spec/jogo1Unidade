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

 int? get id; String? get name; String? get slug;
/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentCopyWith<Agent> get copyWith => _$AgentCopyWithImpl<Agent>(this as Agent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Agent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Agent&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug));
}


@override
int get hashCode {
  final _this = this as Agent;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug);
}

@override
String toString() {
  final _this = this as Agent;
  return 'Agent(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug})';
}


}

/// @nodoc
abstract mixin class $AgentCopyWith<$Res>  {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) _then) = _$AgentCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? slug
});




}
/// @nodoc
class _$AgentCopyWithImpl<$Res>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._self, this._then);

  final Agent _self;
  final $Res Function(Agent) _then;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,}) {
  return _then(Agent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug)  $default,) {final _that = this;
switch (_that) {
case _Agent():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? slug)?  $default,) {final _that = this;
switch (_that) {
case _Agent() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc


class _Agent implements Agent {
  const _Agent({required this.id, this.name, this.slug});
  

@override final  int? id;
@override final  String? name;
@override final  String? slug;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentCopyWith<_Agent> get copyWith => __$AgentCopyWithImpl<_Agent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Agent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug);
}

@override
String toString() {
    return 'Agent(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$AgentCopyWith(_Agent value, $Res Function(_Agent) _then) = __$AgentCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? slug
});




}
/// @nodoc
class __$AgentCopyWithImpl<$Res>
    implements _$AgentCopyWith<$Res> {
  __$AgentCopyWithImpl(this._self, this._then);

  final _Agent _self;
  final $Res Function(_Agent) _then;

/// Create a copy of Agent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,}) {
  return _then(_Agent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
