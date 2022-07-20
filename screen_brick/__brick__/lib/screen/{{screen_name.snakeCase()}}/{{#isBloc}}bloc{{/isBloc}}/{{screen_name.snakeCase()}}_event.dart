part of '{{screen_name.snakeCase()}}_bloc.dart';

{{#use_equatable}}
abstract class {{screen_name.pascalCase()}}Event {
  const {{screen_name.pascalCase()}}Event();
}

/// {@template start_{{screen_name.snakeCase()}}_event}
/// Event added when bloc is init
/// {@endtemplate}
class Init{{screen_name.pascalCase()}}Event extends {{screen_name.pascalCase()}}Event {}{{/use_equatable}}{{#isFreezed}}
@freezed
class {{screen_name.pascalCase()}}Event with _${{screen_name.pascalCase()}}Event {
  const factory {{screen_name.pascalCase()}}Event.init() = {{screen_name.pascalCase()}}EventInit;
}{{/isFreezed}}