import 'package:flutter/widgets.dart';
import 'package:mobileapp/screens/details/details_screen.dart';
import 'package:mobileapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:mobileapp/screens/home/home_screen.dart';
import 'package:mobileapp/screens/login_success/login_success_screen.dart';
import 'package:mobileapp/screens/profile/profile_screen.dart';
import 'package:mobileapp/screens/sign_in/sign_in_screen.dart';
import 'package:mobileapp/screens/splash/prompt_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  PromptScreen.routeName: (context) => const PromptScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
