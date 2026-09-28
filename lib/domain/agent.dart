import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent.freezed.dart';

@freezed
abstract class Agent with _$Agent {
  const factory Agent({
    required int? id,
    String? name,
    String? slug,
  }) = _Agent;
}