import 'package:demo_sdk/demo_sdk.dart';

Future<void> main() async {
  // Initialize SDK
  LoginSdk.initialize();
  print('SDK initialized: ${LoginSdk.isInitialized}');

  // Check SDK version
  print('SDK Version: ${LoginSdk.version}');

  // Test login with valid credentials
  final result = await LoginSdk.login(
    username: 'user',
    password: '123456',
  );

  if (result) {
    print('Login successful!');
    print('Logged in user: ${LoginSdk.currentUser?.username}');
  } else {
    print('Login failed!');
  }

  // Check session
  print('User logged in: ${LoginSdk.isLoggedIn}');

  // Logout
  LoginSdk.logout();
  print('User logged in after logout: ${LoginSdk.isLoggedIn}');
}