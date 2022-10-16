import 'package:flutter/material.dart';
import 'package:mobileapp/screens/splash/components/body.dart';
import 'package:mobileapp/size_config.dart';

class PromptScreen extends StatelessWidget {
  static String routeName = "/home";

  const PromptScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
