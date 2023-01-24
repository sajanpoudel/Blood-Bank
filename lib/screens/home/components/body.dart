import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'home_header.dart';
import 'Peoplelist.dart';
import 'bloodimg.dart';

/// Main content of the home screen.
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(onSearch: (text) => setState(() => _query = text)),
            SizedBox(height: getProportionateScreenWidth(10)),
            const BloodImage(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PeopleList(query: _query),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
