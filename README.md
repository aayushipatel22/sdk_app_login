# Demo SDK
A reusable Dart SDK that provides login functionality, username and password validation, and session management for Dart and Flutter applications.

## Features
- SDK initialization
- Username validation
- Password validation
- Login functionality
- Session management
- Current user information
- Logout functionality
- SDK version information

## Getting Started

### Requirements
- Dart SDK 3.13.7 or above
- Flutter SDK (if using in a Flutter application)

### Installation

Add the following dependency to your application's `pubspec.yaml`:
```yaml
dependencies:
  demo_sdk:
    git:
      url: https://github.com/aayushipatel22/sdk_app_login.git
      ref: main
```

Run:
```bash
flutter pub get
```

For a Dart application, use:
```bash
dart pub get
```

## Usage

### 1. Import the SDK
```dart
import 'package:demo_sdk/demo_sdk.dart';
```

### 2. Initialize the SDK
```dart
LoginSdk.initialize();
print(LoginSdk.isInitialized);
```

### 3. Check SDK Version
```dart
print(LoginSdk.version);
```

### 4. Validate Username
```dart
final usernameError = LoginSdk.validateUsername('user');

if (usernameError == null) {
  print('Username is valid');
} else {
  print(usernameError);
}
```

### 5. Validate Password
```dart
final passwordError = LoginSdk.validatePassword('123456');

if (passwordError == null) {
  print('Password is valid');
} else {
  print(passwordError);
}
```

### 6. Login
```dart
final result = await LoginSdk.login(
  username: 'user',
  password: '123456',
);

if (result) {
  print('Login successful');
} else {
  print('Login failed');
}
```

### 7. Check Login Status
```dart
print(LoginSdk.isLoggedIn);
```

### 8. Get Current User
```dart
print(LoginSdk.currentUser?.username);
```

### 9. Logout
```dart
LoginSdk.logout();
print(LoginSdk.isLoggedIn);
```

## Complete Example
Refer to:
```text
example/demo_sdk_example.dart
```

Run the example using:
```bash
dart run example/demo_sdk_example.dart
```

## Running Tests
Execute:
```bash
dart test
```

## SDK Information
| Property   | Value                                           |
|------------|-------------------------------------------------|
| SDK Name   | demo_sdk                                        |
| Version    | 1.0.0                                           |
| Language   | Dart                                            |
| Repository | https://github.com/aayushipatel22/sdk_app_login |

## Important Note
This SDK currently provides a demonstration of login and session-management functionality. Its login implementation should not be treated as production-grade authentication without appropriate backend authentication and security measures.

## Support
For issues, suggestions, or contributions, please open an issue in the GitHub repository.