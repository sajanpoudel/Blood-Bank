import 'package:flutter/widgets.dart';
import 'package:mobileapp/screens/details/details_screen.dart';
import 'package:mobileapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:mobileapp/screens/home/home_screen.dart';
import 'package:mobileapp/screens/login_success/login_success_screen.dart';
import 'package:mobileapp/screens/profile/profile_screen.dart';
import 'package:mobileapp/screens/sign_in/sign_in_screen.dart';
import 'package:mobileapp/screens/splash/prompt_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  PromptScreen.routeName: (context) => const PromptScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
