import 'package:flutter/material.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Register Account", style: headingStyle),
                SizedBox(
                  height: getProportionateScreenHeight(250),
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/signup.png",
                    scale: 2.0,
                  ),
                ),
                SignUpForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
