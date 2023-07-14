// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:image_search_app/main.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(const MyApp());
      // Build our app and trigger a frame.

      final textInput = find.byType(TextField);

      await tester.enterText(textInput, 'banana');

      await tester.tap(find.byIcon(Icons.search));

      await tester.pumpAndSettle(const Duration(seconds: 5));

      final imageFinder = find.byType(Image);

      expect(imageFinder, findsAtLeastNWidgets(2));
    });
  });
}
