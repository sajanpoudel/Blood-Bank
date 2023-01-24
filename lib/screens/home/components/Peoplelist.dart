import 'package:flutter/material.dart';
import 'package:mobileapp/components/product_card.dart';
import 'package:mobileapp/models/personlist.dart';

import '../../../size_config.dart';
import 'section_title.dart';

/// The people list used on the home screen.
class PeopleList extends StatelessWidget {
  const PeopleList({super.key, this.query = ''});

  /// Search text. Only donors that match it are listed.
  final String query;

  @override
  Widget build(BuildContext context) {
    final donors =
        filterPersons(demoPersons, query).where((p) => p.isPopular).toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Donars Near You!", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              if (donors.isEmpty)
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  child: const Text('No donors match your search'),
                ),
              for (final donor in donors) ProductCard(product: donor),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
