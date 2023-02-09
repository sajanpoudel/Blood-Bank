import 'package:flutter_test/flutter_test.dart';

import 'package:mobileapp/constants.dart';

void main() {
  group('emailValidatorRegExp', () {
    test('accepts common addresses', () {
      expect(emailValidatorRegExp.hasMatch('donor@example.com'), isTrue);
      expect(emailValidatorRegExp.hasMatch('first.last@mail.org'), isTrue);
    });

    test('rejects text without an at sign or a domain', () {
      expect(emailValidatorRegExp.hasMatch('donor.example.com'), isFalse);
      expect(emailValidatorRegExp.hasMatch('donor@example'), isFalse);
      expect(emailValidatorRegExp.hasMatch(''), isFalse);
    });
  });

  group('form error messages', () {
    test('are not empty', () {
      for (final message in [
        kEmailNullError,
        kInvalidEmailError,
        kPassNullError,
        kShortPassError,
        kMatchPassError,
        kNameNullError,
        kPhoneNumberNullError,
        kAddressNullError,
      ]) {
        expect(message, isNotEmpty);
      }
    });
  });
}
