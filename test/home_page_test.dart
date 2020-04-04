// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dotproject/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App displays title', (WidgetTester tester) async {
    await tester.pumpWidget(DotApp());

    expect(find.text('.Project'), findsOneWidget);
  });

  testWidgets('App displays 4x5 grid', (WidgetTester tester) async {
    await tester.pumpWidget(DotApp());

    expect(find.byType(GridView), findsOneWidget);
    expect(find.byType(DotWidget), findsNWidgets(20));
  });
}