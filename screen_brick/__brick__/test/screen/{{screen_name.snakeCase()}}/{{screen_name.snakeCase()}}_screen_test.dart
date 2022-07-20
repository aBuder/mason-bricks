import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/content/content.dart';
import 'package:{{{fullPath}}}/login.dart';
import 'package:mocktail/mocktail.dart';

{{#isBloc}}
class Mock{{screen_name.pascalCase()}}Bloc extends MockBloc<{{screen_name.pascalCase()}}Event, {{screen_name.pascalCase()}}State>
    implements {{screen_name.pascalCase()}}Bloc {}

class Fake{{screen_name.pascalCase()}}Event extends Fake implements {{screen_name.pascalCase()}}Event {}

class Fake{{screen_name.pascalCase()}}State extends Fake implements {{screen_name.pascalCase()}}State {}{{/isBloc}}{{#isCubit}}
class Mock{{screen_name.pascalCase()}}Cubit extends MockCubit<{{screen_name.pascalCase()}}State>
    implements {{screen_name.pascalCase()}}Cubit {}
class Fake{{screen_name.pascalCase()}}State extends Fake implements {{screen_name.pascalCase()}}State {}
{{/isCubit}}
void main() {
  group('{{screen_name.pascalCase()}}Screen', () {
    testWidgets('Ensure text is displayed', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        const MaterialApp(
          home: {{screen_name.pascalCase()}}Screen(),
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Verify that LoginView is displayed
      expect(find.byType({{screen_name.pascalCase()}}View), findsOneWidget);
    });
  });

  group('{{screen_name.pascalCase()}}View', () {
    setUpAll(() {
      {{#isBloc}}registerFallbackValue(Fake{{screen_name.pascalCase()}}Event());{{/isBloc}}
      registerFallbackValue(Fake{{screen_name.pascalCase()}}State());
    });

    testWidgets('Ensure widget InitialContent displayed on state initial',
        (WidgetTester tester) async {
      final {{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}} mockBloc = Mock{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}();
      {{#isFreezed}}whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}State.initial()),
        initialState: const {{screen_name.pascalCase()}}State.initial(),
      );{{/isFreezed}}{{#use_equatable}}
      whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}Initial()),
        initialState: const {{screen_name.pascalCase()}}Initial(),
      );{{/use_equatable}}

      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}>(
            create: (context) => mockBloc,
            child: const {{screen_name.pascalCase()}}View(),
          ),
        ),
      );

      await tester.pump();

      // Verify that LoginView is displayed
      expect(find.byType(InitialContent), findsOneWidget);
    });

    testWidgets('Ensure widget LoadingContent displayed on state loading',
        (WidgetTester tester) async {
      final {{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}} mockBloc = Mock{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}();
      {{#isFreezed}}whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}State.loading()),
        initialState: const {{screen_name.pascalCase()}}State.initial(),
      );{{/isFreezed}}{{#use_equatable}}
      whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}Loading()),
        initialState: const {{screen_name.pascalCase()}}Initial(),
      );{{/use_equatable}}

      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}>(
            create: (context) => mockBloc,
            child: const {{screen_name.pascalCase()}}View(),
          ),
        ),
      );

      await tester.pump();

      // Verify that LoginView is displayed
      expect(find.byType(LoadingContent), findsOneWidget);
    });

    testWidgets('Ensure widget LoadedContent displayed on state loaded',
        (WidgetTester tester) async {
      final {{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}} mockBloc = Mock{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}();
      {{#isFreezed}}whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}State.loaded()),
        initialState: const {{screen_name.pascalCase()}}State.initial(),
      );{{/isFreezed}}{{#use_equatable}}
      whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}Loaded()),
        initialState: const {{screen_name.pascalCase()}}Initial(),
      );{{/use_equatable}}

      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}>(
            create: (context) => mockBloc,
            child: const {{screen_name.pascalCase()}}View(),
          ),
        ),
      );

      await tester.pump();

      // Verify that LoginView is displayed
      expect(find.byType(LoadedContent), findsOneWidget);
    });

    testWidgets('Ensure widget ErrorContent displayed on state error',
        (WidgetTester tester) async {
      final {{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}} mockBloc = Mock{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}();
      {{#isFreezed}}whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}State.error()),
        initialState: const {{screen_name.pascalCase()}}State.initial(),
      );{{/isFreezed}}{{#use_equatable}}
      whenListen(
        mockBloc,
        Stream.value(const {{screen_name.pascalCase()}}Error()),
        initialState: const {{screen_name.pascalCase()}}Initial(),
      );{{/use_equatable}}

      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<{{screen_name.pascalCase()}}{{#isBloc}}Bloc{{/isBloc}}{{#isCubit}}Cubit{{/isCubit}}>(
            create: (context) => mockBloc,
            child: const {{screen_name.pascalCase()}}View(),
          ),
        ),
      );

      await tester.pump();

      // Verify that LoginView is displayed
      expect(find.byType(ErrorContent), findsOneWidget);
    });
  });
}
