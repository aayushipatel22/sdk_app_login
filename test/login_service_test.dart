/*
import 'package:test/test.dart';
/* We are using the Dart testing package.
group() groups related test cases.
test() defines an individual test case.
expect() compares the actual result with the expected result.  */

import 'package:demo_sdk/src/login_service.dart';

void main() {
  group('Login Service Tests', () {
    final loginService = LoginService();

    // Test Case 1: Valid Credentials
    test('Login should succeed with valid credentials', () async {
      final result = await loginService.login(
        username: 'user',
        password: '123456',
      );
      expect(result, true); //This means we expect the login result to be true
    });

    // Test Case 2: Invalid Username
    test('Login should fail with invalid username', () async {
      final result = await loginService.login(
        username: 'wronguser',
        password: '123456',
      );
      expect(result, false);
    });

    // Test Case 3: Invalid Password
    test('Login should fail with invalid password', () async {
      final result = await loginService.login(
        username: 'user',
        password: 'wrong123',
      );
      expect(result, false);
    });

    // Test Case 4: Both Credentials Invalid
    test('Login should fail with invalid credentials', () async {
      final result = await loginService.login(
        username: 'wronguser',
        password: 'wrong123',
      );
      expect(result, false);
    });
  });
}
*/
