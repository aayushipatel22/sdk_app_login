// This file will handle login-related functionality.
/*
Responsibilities:
- Handle login requests.
- Check login credentials.
- Return login results. */
// -----------------1. receives the username and password.-------------------

class LoginService {
  // Demo credentials
  // static means..we can access these variables through the class without creating an object.
  // const means..their values cannot be changed.
  static const String validUsername = 'user';
  static const String validPassword = '123456';

  // Login Function
  Future<bool> login({
    required String username,
    required String password,
  }) async {
    // Simulating login request
    await Future.delayed(const Duration(milliseconds: 500));

    // Check credentials
    if (username == validUsername && password == validPassword) {
      return true;
    } else {
      return false;
    }
  }
}

/*
Future:	Indicates an asynchronous operation
bool:	Function returns true or false
login:	Function name
required:	Parameter must be provided
async:	Allows asynchronous operations */
