import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rota_gourmet/features/dashboard/presentation/dashboard_screen.dart';

void main() {
  group('DashboardScreen', () {
    testWidgets('Renders correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: DashboardScreen(),
      ));

      // Verify that text is rendered
      expect(find.text('Bem-vindo à página Dashboard!'), findsOneWidget);
    });
  });
}