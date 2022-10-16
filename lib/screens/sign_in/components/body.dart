import 'package:flutter/material.dart';
import 'package:mobileapp/components/no_account_text.dart';
import 'package:mobileapp/components/socal_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
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
                Text(
                  "Sign In To Donate",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 239, 54, 54),
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SizedBox(
                  height: getProportionateScreenHeight(150),
                  width: getProportionateScreenWidth(200),
                  child: Image.asset("assets/images/login_icon.png"),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Or Sign In With  "),
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
