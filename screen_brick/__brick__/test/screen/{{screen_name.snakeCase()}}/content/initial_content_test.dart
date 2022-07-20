import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/content/content.dart';

void main() {
  testWidgets('Ensure text is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: InitialContent(),
        ),
      ),
    );

    await tester.pump();

    // Verify that Loaded is displayed
    expect(find.text('Initial'), findsOneWidget);
  });
}
