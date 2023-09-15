import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapp/constants.dart';
import 'package:mobileapp/enums.dart';

void main() {
  test('the bottom bar has four tabs in order', () {
    expect(MenuState.values, [MenuState.home, MenuState.favourite, MenuState.message, MenuState.profile]);
  });

  test('animations are short', () {
    expect(kAnimationDuration, const Duration(milliseconds: 200));
    expect(defaultDuration, const Duration(milliseconds: 250));
  });

  test('the primary color is a strong red', () {
    expect(kPrimaryColor.red, greaterThan(200));
    expect(kPrimaryColor.green, lessThan(50));
  });

  test('error messages are short sentences', () {
    for (final message in [kEmailNullError, kPassNullError, kShortPassError]) {
      expect(message.length, lessThan(40));
    }
  });
}
