import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/components/custom_bottom_nav_bar.dart';
import 'package:mobileapp/enums.dart';
import 'package:mobileapp/screens/sign_in/sign_in_screen.dart';

import 'components/body.dart';

/// The profile screen.
class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});

  /// Signs the user out of Firebase and returns to the sign in screen, forgetting the earlier screens.
  Future<void> _logOut(BuildContext context) async {
    final navigator = Navigator.of(context);
    await FirebaseAuth.instance.signOut();
    navigator.pushNamedAndRemoveUntil(SignInScreen.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Body(onLogout: () => _logOut(context)),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
