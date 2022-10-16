import 'package:flutter/material.dart';

import 'personlist.dart';

class Cart {
  final Person product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoPersons[0], numOfItem: 2),
  Cart(product: demoPersons[1], numOfItem: 1),
  Cart(product: demoPersons[3], numOfItem: 1),
];
