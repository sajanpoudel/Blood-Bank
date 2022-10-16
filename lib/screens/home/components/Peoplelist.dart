import 'package:flutter/material.dart';
import 'package:mobileapp/components/product_card.dart';
import 'package:mobileapp/models/personlist.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              ...List.generate(
                demoPersons.length,
                (index) {
                  if (demoPersons[index].isPopular)
                    return ProductCard(product: demoPersons[index]);

                  return SizedBox
                      .shrink(); 
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
