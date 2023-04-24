import 'package:flutter/material.dart';

import 'components/body.dart';

/// The login success screen.
class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: const Body(),
    );
  }
}
