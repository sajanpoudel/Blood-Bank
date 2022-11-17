import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/screens/home/components/blood_group_filter.dart';
import 'package:mobileapp/size_config.dart';

Widget host(Widget child) {
  return MaterialApp(
    home: Builder(builder: (context) {
      SizeConfig().init(context);
      return Scaffold(body: child);
    }),
  );
}

void main() {
  testWidgets('tapping a chip reports its group', (tester) async {
    String? picked;
    await tester.pumpWidget(host(BloodGroupFilter(
        selected: null, onChanged: (group) => picked = group)));
    await tester.tap(find.text('A-'));
    expect(picked, 'A-');
  });

  testWidgets('tapping the selected chip clears the choice', (tester) async {
    String? picked = 'A+';
    await tester.pumpWidget(host(BloodGroupFilter(
        selected: 'A+', onChanged: (group) => picked = group)));
    await tester.tap(find.text('A+'));
    expect(picked, isNull);
  });
}
