import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

/// Main content of the profile screen.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
