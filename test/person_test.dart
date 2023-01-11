import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/models/Cart.dart';
import 'package:mobileapp/models/personlist.dart';

void main() {
  test('a person has sensible defaults', () {
    final person = Person(id: 9, images: ['a.png'], title: 'Ada', description: 'Donor');
    expect(person.rating, 0.0);
    expect(person.isFavourite, isFalse);
    expect(person.isPopular, isFalse);
  });
}
