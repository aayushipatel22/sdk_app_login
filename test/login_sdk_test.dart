/*
This test file imports only demo_sdk.dart.
This demonstrates that a developer can use the public SDK,
 without importing internal files.
 */

import 'package:test/test.dart';
import 'package:demo_sdk/demo_sdk.dart';

void main() {
  group('Login SDK Public API Tests', () {
    setUp(() {
      LoginSdk.initialize();
      LoginSdk.logout();
    });

    // Test 1: SDK Initialization
    test('SDK should initialize successfully', () {
      expect(LoginSdk.isInitialized, true);
    });

    // Test 2: SDK Version
    test('SDK should return its version', () {
      expect(LoginSdk.version, '1.0.0');
    });

    // Test 3: Valid Username
    test('Should validate correct username', () {
      final result = LoginSdk.validateUsername('user');
      expect(result, null);
    });

    // Test 4: Invalid Username
    test('Should reject username containing numbers', () {
      final result = LoginSdk.validateUsername('user123');
      expect(result, isNotNull);
    });

    // Test 5: Valid Password
    test('Should validate correct password', () {
      final result = LoginSdk.validatePassword('123456');
      expect(result, null);
    });

    // Test 6: Invalid Password
    test('Should reject short password', () {
      final result = LoginSdk.validatePassword('123');
      expect(result, isNotNull);
    });

    // Test 7: Successful Login
    test('Should login successfully with valid credentials', () async {
      final result = await LoginSdk.login(username: 'user', password: '123456');
      expect(result, true);
      expect(LoginSdk.isLoggedIn, true);
      expect(LoginSdk.currentUser?.username, 'user');
    });

    // Test 8: Failed Login
    test('Should reject invalid credentials', () async {
      final result = await LoginSdk.login(
        username: 'user',
        password: 'wrong123',
      );
      expect(result, false);
      expect(LoginSdk.isLoggedIn, false);
    });

    // Test 9: Logout
    test('Should logout successfully', () async {
      await LoginSdk.login(username: 'user', password: '123456');

      LoginSdk.logout();
      expect(LoginSdk.isLoggedIn, false);
      expect(LoginSdk.currentUser, null);
    });
  });
}
