// This file will manage the login session.
/*
Responsibilities:
- Store login status.
- Maintain current user information.
- Check whether a user is logged in.
- Clear session information during logout. */
// -----------------4. manages the login session.---------------

import 'user_model.dart';

class SessionManager {
  // Store current logged-in user
  User? _currentUser; //_ makes the variable private to its Dart library.

  // Check login status
  bool get isLoggedIn {
    return _currentUser != null;
  }

  // Get current user information-----This returns the currently logged-in user.
  User? get currentUser {
    return _currentUser;
  }

  // Save user session---> This stores the user information after successful login.
  void saveSession(User user) {
    _currentUser = user;
  }

  // Clear user session (Logout)--> This removes the current user information during logout.
  void clearSession() {
    _currentUser = null;
  }
}
