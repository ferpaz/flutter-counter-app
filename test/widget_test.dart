// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hello_world_app/main.dart';

void main() {
  testWidgets('Counter increments / decrements / refresh smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsNothing);
    expect(find.text('Clicks'), findsOneWidget);

    // Tap the '+1' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.plus_one));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsNothing);
    expect(find.text('Click'), findsOneWidget);

    // Tap the '+1' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.plus_one));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('Clicks'), findsOneWidget);

    // Tap the '-1' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.exposure_minus_1));
    await tester.pump();

    // Verify that our counter has decremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsNothing);
    expect(find.text('Click'), findsOneWidget);

    // Tap the 'refresh' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.refresh_outlined));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsNothing);
    expect(find.text('Clicks'), findsOneWidget);
  });
}
