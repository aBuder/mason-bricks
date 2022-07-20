import 'package:flutter/material.dart';{{#isBloc}}
import 'package:{{{fullPath}}}/bloc/bloc.dart';{{/isBloc}}{{#isCubit}}
import 'package:{{{fullPath}}}/cubit/cubit.dart';{{/isCubit}}
import 'package:{{{fullPath}}}/content/content.dart';

/// {@template {{screen_name.snakeCase()}}_page}
/// A description for {{screen_name.pascalCase()}}Page
/// {@endtemplate}
class {{screen_name.pascalCase()}}Screen extends StatelessWidget {
  /// {@macro {{screen_name.snakeCase()}}_page}
  const {{screen_name.pascalCase()}}Screen({Key? key}) : super(key: key);
{{#isBloc}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{screen_name.pascalCase()}}Bloc()..add({{#isFreezed}}const {{screen_name.pascalCase()}}Event.init(){{/isFreezed}}{{#use_equatable}} Init{{screen_name.pascalCase()}}Event(){{/use_equatable}}),
      child: const Scaffold(
        body: {{screen_name.pascalCase()}}View(),
      ),
    );
  }
{{/isBloc}}
{{#isCubit}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{screen_name.pascalCase()}}Cubit()..init(),
      child: const Scaffold(
        body: {{screen_name.pascalCase()}}View(),
      ),
    );
  }
{{/isCubit}}
{{#isNone}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{screen_name.pascalCase()}}View(),
    );
  }
{{/isNone}}
}

/// {@template {{screen_name.snakeCase()}}_view}
/// Displays the Body of {{screen_name.pascalCase()}}View
/// {@endtemplate}
class {{screen_name.pascalCase()}}View extends StatelessWidget {
  /// {@macro {{screen_name.snakeCase()}}_view}
  const {{screen_name.pascalCase()}}View({Key? key}) : super(key: key);
{{#use_equatable}}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}, {{screen_name.pascalCase()}}State>(
      builder: (context, state) {
        if (state is {{screen_name.pascalCase()}}Loading) {
          return const LoadingContent();
        }
        if (state is {{screen_name.pascalCase()}}Loaded) {
          return const LoadedContent();
        }
        if (state is {{screen_name.pascalCase()}}Error) {
          return const ErrorContent();
        }
        return const InitialContent();
      },
    );
  }
{{/use_equatable}}
{{#isFreezed}}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}, {{screen_name.pascalCase()}}State>(
      builder: (context, state) {
        return state.when(
          initial: () => const InitialContent(),
          loading: () => const LoadingContent(),
          loaded: () => const LoadedContent(),
          error: () => const ErrorContent(),
        );
      },
    );
  }
{{/isFreezed}}
}