import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app/main.dart';
import 'package:integration_test/integration_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end - to - end test', () {
    testWidgets('banana를 검색하면 2개 이상 검색되어야 한다', (WidgetTester tester) async {
      await mockNetworkImagesFor(() async {
        await tester.pumpWidget(const MyApp());

        final textInput = find.byType(TextField);

        await tester.enterText(textInput, 'banana');

        await tester.tap(find.byIcon(Icons.search));

        await tester.pumpAndSettle(const Duration(seconds: 5));

        final imageFinder = find.byType(Image);

        expect(imageFinder, findsAtLeastNWidgets(2));
      });
    });
  });
}
