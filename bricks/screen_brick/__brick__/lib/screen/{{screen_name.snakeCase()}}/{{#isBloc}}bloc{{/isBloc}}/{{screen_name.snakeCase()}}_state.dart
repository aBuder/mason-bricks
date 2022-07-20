part of '{{screen_name.snakeCase()}}_bloc.dart';
{{#use_equatable}}
/// {@template {{screen_name.snakeCase()}}_state}
/// {{screen_name.pascalCase()}}State description
/// {@endtemplate}
class {{screen_name.pascalCase()}}State{{#use_equatable}} extends Equatable{{/use_equatable}} {
  /// {@macro {{screen_name.snakeCase()}}_state}
  const {{screen_name.pascalCase()}}State({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;
{{#use_equatable}}
  @override
  List<Object> get props => [customProperty];
{{/use_equatable}}
  /// Creates a copy of the current {{screen_name.pascalCase()}}State with property changes
  {{screen_name.pascalCase()}}State copyWith({
    String? customProperty,
  }) {
    return {{screen_name.pascalCase()}}State(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template {{screen_name.snakeCase()}}_initial}
/// The initial state of {{screen_name.pascalCase()}}State
/// {@endtemplate}
class {{screen_name.pascalCase()}}Initial extends {{screen_name.pascalCase()}}State {
  /// {@macro {{screen_name.snakeCase()}}_initial}
  const {{screen_name.pascalCase()}}Initial() : super();
}


/// {@template {{screen_name.snakeCase()}}_loading}
/// The loading state of {{screen_name.pascalCase()}}State
/// {@endtemplate}
class {{screen_name.pascalCase()}}Loading extends {{screen_name.pascalCase()}}State {
  /// {@macro {{screen_name.snakeCase()}}_initial}
  const {{screen_name.pascalCase()}}Loading() : super();
}

/// {@template {{screen_name.snakeCase()}}_loaded}
/// The loaded state of {{screen_name.pascalCase()}}State
/// {@endtemplate}
class {{screen_name.pascalCase()}}Loaded extends {{screen_name.pascalCase()}}State {
  /// {@macro {{screen_name.snakeCase()}}_initial}
  const {{screen_name.pascalCase()}}Loaded() : super();
}

/// {@template {{screen_name.snakeCase()}}_error}
/// The error state of {{screen_name.pascalCase()}}State
/// {@endtemplate}
class {{screen_name.pascalCase()}}Error extends {{screen_name.pascalCase()}}State {
  /// {@macro {{screen_name.snakeCase()}}_initial}
  const {{screen_name.pascalCase()}}Error() : super();
}
{{/use_equatable}}{{#isFreezed}}
@freezed
class {{screen_name.pascalCase()}}State with _${{screen_name.pascalCase()}}State {
  const factory {{screen_name.pascalCase()}}State.initial() = _Initial;
  const factory {{screen_name.pascalCase()}}State.loading() = _Loading;
  const factory {{screen_name.pascalCase()}}State.loaded() = _Loaded;
  const factory {{screen_name.pascalCase()}}State.error() = _Error;
}{{/isFreezed}}

