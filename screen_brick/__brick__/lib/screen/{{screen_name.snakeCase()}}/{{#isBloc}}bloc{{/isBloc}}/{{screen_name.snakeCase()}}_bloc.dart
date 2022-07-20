import 'dart:async';

import 'package:bloc/bloc.dart';{{#use_equatable}}
import 'package:equatable/equatable.dart';{{/use_equatable}}{{#isFreezed}}{{#isFreezed}}
import 'package:freezed_annotation/freezed_annotation.dart';{{/isFreezed}}
part '{{screen_name.snakeCase()}}_bloc.freezed.dart';{{/isFreezed}}
part '{{screen_name.snakeCase()}}_event.dart';
part '{{screen_name.snakeCase()}}_state.dart';
{{#use_equatable}}
class {{screen_name.pascalCase()}}Bloc extends Bloc<{{screen_name.pascalCase()}}Event, {{screen_name.pascalCase()}}State> {
  {{screen_name.pascalCase()}}Bloc() : super(const {{screen_name.pascalCase()}}Initial()) {
    on<Init{{screen_name.pascalCase()}}Event>(_onInit{{screen_name.pascalCase()}}Event);
  }

  FutureOr<void> _onInit{{screen_name.pascalCase()}}Event(
    Init{{screen_name.pascalCase()}}Event event,
    Emitter<{{screen_name.pascalCase()}}State> emit,
  ) async {
    try {
      emit(const {{screen_name.pascalCase()}}Loading());
      await Future.delayed(const Duration(seconds: 1), () {});
      emit(const {{screen_name.pascalCase()}}Loaded());
    } catch (e) {
      emit(const {{screen_name.pascalCase()}}Error());
    }
    
  }
}{{/use_equatable}}{{#isFreezed}}
class {{screen_name.pascalCase()}}Bloc extends Bloc<{{screen_name.pascalCase()}}Event, {{screen_name.pascalCase()}}State> {
  {{screen_name.pascalCase()}}Bloc() : super(const {{screen_name.pascalCase()}}State.initial()) {
    on<{{screen_name.pascalCase()}}EventInit>(_onInit{{screen_name.pascalCase()}}Event);
  }

  FutureOr<void> _onInit{{screen_name.pascalCase()}}Event(
    {{screen_name.pascalCase()}}EventInit event,
    Emitter<{{screen_name.pascalCase()}}State> emit,
  ) async {
    try {
      emit(const {{screen_name.pascalCase()}}State.loading());
      await Future.delayed(const Duration(seconds: 1), () {});
      emit(const {{screen_name.pascalCase()}}State.loaded());
    } catch (e) {
      emit(const {{screen_name.pascalCase()}}State.error());
    }
    
  }
}
{{/isFreezed}}