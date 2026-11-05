import 'package:test/test.dart';
import 'package:demo_sdk/src/validation_service.dart';

void main() {
  group('Username Validation Tests', () {
    test('Valid username', () {
      final result = ValidationService.validateUsername('user');
      expect(result, null);
    });

    test('Empty username', () {
      final result = ValidationService.validateUsername('');
      expect(result, 'Username cannot be empty');
    });

    test('Username with numbers', () {
      final result = ValidationService.validateUsername('user123');
      expect(result, 'Username should contain only letters');
    });
  });

  group('Password Validation Tests', () {
    test('Valid password', () {
      final result = ValidationService.validatePassword('123456');
      expect(result, null);
    });

    test('Empty password', () {
      final result = ValidationService.validatePassword('');
      expect(result, 'Password cannot be empty');
    });

    test('Password with less than 6 characters', () {
      final result = ValidationService.validatePassword('123');
      expect(result, 'Password must contain at least 6 characters');
    });
  });
}
