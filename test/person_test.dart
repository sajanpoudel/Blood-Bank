import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/models/Cart.dart';
import 'package:mobileapp/models/personlist.dart';

void main() {
  test('a person has sensible defaults', () {
    final person =
        Person(id: 9, images: ['a.png'], title: 'Ada', description: 'Donor');
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

  test('the shared description names the last donor', () {
    expect(demoPersons.last.description, description);
  });

  test('a cart line keeps its donor and amount', () {
    final cart = Cart(product: demoPersons.first, numOfItem: 3);
    expect(cart.product.id, demoPersons.first.id);
    expect(cart.numOfItem, 3);
  });

  test('the demo cart points at demo donors', () {
    for (final cart in demoCarts) {
      expect(demoPersons, contains(cart.product));
      expect(cart.numOfItem, greaterThan(0));
    }
  });

  test('the blood group is read from the description', () {
    expect(demoPersons[0].bloodGroup, 'AB+');
    expect(demoPersons[1].bloodGroup, 'B-');
    expect(demoPersons.last.bloodGroup, 'A+');
    final other = Person(
        id: 8, images: ['a.png'], title: 'Ada', description: 'No group given');
    expect(other.bloodGroup, isNull);
  });

  test('filterPersons matches names and exact blood groups', () {
    expect(filterPersons(demoPersons, ''), hasLength(5));
    expect(filterPersons(demoPersons, 'pandey').map((p) => p.id), [1, 3]);
    expect(filterPersons(demoPersons, 'o+').map((p) => p.id), [3]);
    expect(filterPersons(demoPersons, 'zzz'), isEmpty);
  });

  test('filterPersons can also require a blood group', () {
    expect(
        filterPersons(demoPersons, '', bloodGroup: 'B-').map((p) => p.id), [2]);
    expect(
        filterPersons(demoPersons, 'pandey', bloodGroup: 'O+').map((p) => p.id),
        [3]);
    expect(filterPersons(demoPersons, 'smaran', bloodGroup: 'O+'), isEmpty);
    expect(filterPersons(demoPersons, '', bloodGroup: null), hasLength(5));
  });

  test('every blood group of the demo donors can be chosen in the filter', () {
    for (final person in demoPersons) {
      expect(bloodGroups, contains(person.bloodGroup));
    }
  });
}
