import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/enums.dart';

void main() {
  test('the bottom bar has four tabs in order', () {
    expect(MenuState.values, [MenuState.home, MenuState.favourite, MenuState.message, MenuState.profile]);
  });
}
