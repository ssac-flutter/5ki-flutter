import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end - to - end test', () {
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
      app.main();

      await tester.pump();
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
