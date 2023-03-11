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

  test('the demo list has five donors', () {
    expect(demoPersons, hasLength(5));
  });

  test('demo donor ids are unique', () {
    final ids = demoPersons.map((p) => p.id).toSet();
    expect(ids, hasLength(demoPersons.length));
  });

  test('every demo donor has a picture, a name and a blood group', () {
    for (final person in demoPersons) {
      expect(person.images, isNotEmpty);
      expect(person.title, isNotEmpty);
      expect(person.description, contains('blood is'));
    }
  });

  test('ratings stay between zero and five', () {
    for (final person in demoPersons) {
      expect(person.rating, inInclusiveRange(0.0, 5.0));
    }
  });
}
