import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/components/default_button.dart';
import 'package:mobileapp/components/rounded_icon_btn.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/size_config.dart';

/// Builds [child] inside a MaterialApp after SizeConfig has been initialised.
Widget app(Widget child) {
  return MaterialApp(
    home: Builder(
      builder: (context) {
        SizeConfig().init(context);
        return Scaffold(body: child);
      },
    ),
  );
}

void main() {

  testWidgets('DefaultButton shows its text', (tester) async {
    await tester.pumpWidget(app(DefaultButton(text: 'Continue', press: () {})));
    expect(find.text('Continue'), findsOneWidget);
  });

  testWidgets('DefaultButton calls press when tapped', (tester) async {
    var taps = 0;
    await tester.pumpWidget(app(DefaultButton(text: 'Go', press: () => taps++)));
    await tester.tap(find.text('Go'));
    expect(taps, 1);
  });

  testWidgets('DefaultButton fills the available width', (tester) async {
    await tester.pumpWidget(app(DefaultButton(text: 'Wide', press: () {})));
    final box = tester.getSize(find.byType(DefaultButton));
    expect(box.width, tester.getSize(find.byType(Scaffold)).width);
  });

  testWidgets('DefaultButton uses the primary color', (tester) async {
    await tester.pumpWidget(app(DefaultButton(text: 'Colour', press: () {})));
    final button = tester.widget<TextButton>(find.byType(TextButton));
    final color = button.style!.backgroundColor!.resolve({});
    expect(color, kPrimaryColor);
  });
}
