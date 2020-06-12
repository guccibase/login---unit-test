import 'package:test/test.dart';

import '../lib/login_page.dart';

void main() {
  test("empty email returns error string", () {
    var result = EmailFieldValidator.validate("");
    expect(result, 'Email can\'t be empty');
  });

  test("non-empty email returns null", () {
    var result = EmailFieldValidator.validate("value");
    expect(result, null);
  });

  test("empty password returns error string", () {
    var result = PasswordFieldValidator.validate("");
    expect(result, 'Password can\'t be empty');
  });

  test("non-empty password returns null", () {
    var result = PasswordFieldValidator.validate("value");
    expect(result, null);
  });
}
