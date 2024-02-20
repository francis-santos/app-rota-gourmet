import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rota_gourmet/features/auth/presentation/login_screen.dart';

void main() {
  group('LoginScreen', () {
    testWidgets('Renders correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      // Verify that text fields are rendered
      expect(find.byType(TextField), findsNWidgets(2));

      // Verify that login button is rendered
      expect(find.text('Login'), findsOneWidget);
    });

    testWidgets('Invalid email shows error message', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      // Find email field and enter invalid email
      await tester.enterText(find.byKey(const ValueKey('email_field')), 'invalid_email');

      // Tap the login button
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Expect to find an error message
      expect(find.text('Invalid email'), findsOneWidget);
    });

    testWidgets('Invalid password shows error message', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      // Find password field and enter invalid password
      await tester.enterText(find.byKey(const ValueKey('password_field')), 'short');

      // Tap the login button
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Expect to find an error message
      expect(find.text('Password must be at least 6 characters long'), findsOneWidget);
    });
  });
}