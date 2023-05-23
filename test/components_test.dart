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
}
