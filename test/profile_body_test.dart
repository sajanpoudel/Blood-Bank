import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/screens/profile/components/body.dart';

void main() {
  testWidgets('the profile lists the account entries', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Body())));
    for (final label in [
      'My Account',
      'Notifications',
      'Settings',
      'Help Center',
      'Log Out'
    ]) {
      expect(find.text(label), findsOneWidget);
    }
  });

  testWidgets('Log Out calls the callback', (tester) async {
    var loggedOut = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Body(onLogout: () => loggedOut = true)),
    ));
    await tester.ensureVisible(find.text('Log Out'));
    await tester.tap(find.text('Log Out'));
    expect(loggedOut, isTrue);
  });
}
