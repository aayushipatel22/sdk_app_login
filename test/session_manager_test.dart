/*
import 'package:test/test.dart';
import 'package:demo_sdk/src/user_model.dart';
import 'package:demo_sdk/src/session_manager.dart';

void main() {
  group('Session Manager Tests', () {
    late SessionManager sessionManager;
    setUp(() {
      sessionManager = SessionManager();
    }); //setUp() function executes before every test case.
    //This ensures that every test gets a fresh SessionManager object.

    // Test Case 1: Initial Login Status
    test('Initially user should be logged out', () {
      expect(sessionManager.isLoggedIn, false);
    });

    // Test Case 2: Save User Session
    test('Should save user session successfully', () {
      const user = User(username: 'user');
      sessionManager.saveSession(user);
      expect(sessionManager.isLoggedIn, true);
    });

    // Test Case 3: Get Current User
    test('Should return current user information', () {
      const user = User(username: 'user');
      sessionManager.saveSession(user);
      expect(sessionManager.currentUser?.username, 'user');
    });

    // Test Case 4: Clear Session
    test('Should clear user session after logout', () {
      const user = User(username: 'user');
      sessionManager.saveSession(user);
      sessionManager.clearSession();
      expect(sessionManager.isLoggedIn, false);
      expect(sessionManager.currentUser, null);
    });
  });
}
*/

//late keyword: It means we will initialize this variable later, before using it.
