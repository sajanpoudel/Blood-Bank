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

  testWidgets('RoundedIconBtn shows its icon', (tester) async {
    await tester.pumpWidget(app(RoundedIconBtn(icon: Icons.add, press: () {})));
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('RoundedIconBtn calls press when tapped', (tester) async {
    var taps = 0;
    await tester.pumpWidget(app(RoundedIconBtn(icon: Icons.remove, press: () => taps++)));
    await tester.tap(find.byIcon(Icons.remove));
    expect(taps, 1);
  });

  testWidgets('RoundedIconBtn has no shadow by default', (tester) async {
    await tester.pumpWidget(app(RoundedIconBtn(icon: Icons.add, press: () {})));
    final container = tester.widget<Container>(find.byType(Container).first);
    final decoration = container.decoration as BoxDecoration;
    expect(decoration.boxShadow, isEmpty);
  });

  testWidgets('RoundedIconBtn can show a shadow', (tester) async {
    await tester.pumpWidget(app(RoundedIconBtn(icon: Icons.add, press: () {}, showShadow: true)));
    final container = tester.widget<Container>(find.byType(Container).first);
    final decoration = container.decoration as BoxDecoration;
    expect(decoration.boxShadow, hasLength(1));
  });

  testWidgets('proportionate sizes follow the screen size', (tester) async {
    tester.view.physicalSize = const Size(750, 1624);
    tester.view.devicePixelRatio = 2.0;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(app(const SizedBox()));
    expect(getProportionateScreenWidth(375), 375.0);
    expect(getProportionateScreenHeight(500), 406.0);
  });
}
