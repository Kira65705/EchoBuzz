import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:echobuzz/main.dart';

void main() {
  testWidgets('shows main tabs for guest home', (WidgetTester tester) async {
    await tester.pumpWidget(const EchoBuzzApp());

    expect(find.text('Tags'), findsWidgets);
    expect(find.text('Trend'), findsWidgets);
    expect(find.text('Chat'), findsWidgets);
    expect(find.text('My'), findsWidgets);
    expect(find.text('Search'), findsOneWidget);
  });

  testWidgets('opens chat and replies with hardcoded AI text', (WidgetTester tester) async {
    await tester.pumpWidget(const EchoBuzzApp());

    await tester.tap(find.text('Hayra y Houra'));
    await tester.pumpAndSettle();

    expect(find.text('Introduction'), findsOneWidget);
    expect(find.text('Enter a message'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'hello');
    await tester.tap(find.byIcon(Icons.auto_awesome));
    await tester.pump();
    expect(find.text('hello'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 700));
    expect(find.textContaining('guttural growl'), findsOneWidget);
  });
}
