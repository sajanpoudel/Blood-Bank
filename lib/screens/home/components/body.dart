import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'home_header.dart';
import 'Peoplelist.dart';
import 'bloodimg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const BloodImage(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PeopleList(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
