import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/content/content.dart';

void main() {
  testWidgets('Ensure text is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: LoadingContent(),
        ),
      ),
    );

    await tester.pump();

    // Verify that Loading is displayed
    expect(find.text('Loading'), findsOneWidget);
  });
}
