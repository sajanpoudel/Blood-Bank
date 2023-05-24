import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/theme.dart';

void main() {
  test('the app uses a white background', () {
    expect(theme().scaffoldBackgroundColor, Colors.white);
  });

  test('the app font is Muli', () {
    expect(theme().textTheme.bodyMedium?.fontFamily ?? 'Muli', 'Muli');
  });

  test('body text uses the muted text color', () {
    expect(textTheme().bodyLarge?.color, kTextColor);
    expect(textTheme().bodyMedium?.color, kTextColor);
  });
}
