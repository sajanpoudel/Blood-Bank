import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/theme.dart';

void main() {
  test('the app uses a white background', () {
    expect(theme().scaffoldBackgroundColor, Colors.white);
  });
}
