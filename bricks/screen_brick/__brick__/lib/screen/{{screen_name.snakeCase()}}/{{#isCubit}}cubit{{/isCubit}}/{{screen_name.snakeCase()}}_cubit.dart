import 'dart:async';
import 'package:bloc/bloc.dart';{{#use_equatable}}
import 'package:equatable/equatable.dart';{{/use_equatable}}{{#isFreezed}}
import 'package:freezed_annotation/freezed_annotation.dart';{{/isFreezed}}

part '{{screen_name.snakeCase()}}_state.dart';{{#isFreezed}}
part '{{screen_name.snakeCase()}}_cubit.freezed.dart';{{/isFreezed}}
{{#use_equatable}}
class {{screen_name.pascalCase()}}Cubit extends Cubit<{{screen_name.pascalCase()}}State> {
  {{screen_name.pascalCase()}}Cubit() : super(const {{screen_name.pascalCase()}}Initial());

  /// A description for init function 
  FutureOr<void> init() async {
    try {
      emit(const {{screen_name.pascalCase()}}Loading());
      await Future.delayed(const Duration(seconds: 1), () {});
      emit(const {{screen_name.pascalCase()}}Loaded());
    } catch (e) {
      emit(const {{screen_name.pascalCase()}}Error());
    }
  }
}{{/use_equatable}}{{#isFreezed}}
class {{screen_name.pascalCase()}}Cubit extends Cubit<{{screen_name.pascalCase()}}State> {
  {{screen_name.pascalCase()}}Cubit() : super(const {{screen_name.pascalCase()}}State.initial());

  /// A description for init function 
  FutureOr<void> init() async {
    try {
      emit(const {{screen_name.pascalCase()}}State.loading());
      await Future.delayed(const Duration(seconds: 1), () {});
      emit(const {{screen_name.pascalCase()}}State.loaded());
    } catch (e) {
      emit(const {{screen_name.pascalCase()}}State.error());
    }
  }
}{{/isFreezed}}