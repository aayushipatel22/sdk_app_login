// This file will validate the entered information.
/*
Responsibilities:
- Check whether the username is empty.
- Check whether the password is empty.
- Validate username format.
- Validate password requirements.    */
// -----------------2. checks the credentials' format.-------------------
/*
Field	     Validation Rule
Username	 Cannot be empty
Username	 Only letters allowed
Password	 Cannot be empty
Password	 Minimum 6 characters */

class ValidationService {
  // Validate Username
  static String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'Username cannot be empty';
    }

    final usernamePattern = RegExp(r'^[a-zA-Z]+$');

    if (!usernamePattern.hasMatch(username)) {
      return 'Username should contain only letters';
    }
    return null;
  }

  // Validate Password
  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    }

    if (password.length < 6) {
      return 'Password must contain at least 6 characters';
    }
    return null;
  }
}

/*
What is String??
It means the function can return either:
- A String containing an error message.
- null when validation is successful.      */

/*
RegExp(r'^[a-zA-Z]+$');
This checks whether the username contains only English alphabetic characters.
- ^ means start of string.
- [a-zA-Z] means uppercase or lowercase letters.
- + means one or more characters.
- $ means end of string.        */
