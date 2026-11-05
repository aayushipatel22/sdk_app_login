// ----------------5. exposes the public functionality.----------------
export 'src/user_model.dart' show User;
//export statement
// It makes the User class available to developers who import demo_sdk.dart.
import 'src/login_service.dart';
import 'src/validation_service.dart';
import 'src/session_manager.dart';
import 'src/user_model.dart';

// Public SDK Class
class LoginSdk {
  // SDK Version
  static const String version = '1.0.0';

  // SDK Initialization Status
  static bool _isInitialized = false;

  // Create Service Objects
  static final LoginService _loginService = LoginService();
  static final SessionManager _sessionManager = SessionManager();

  // Initialize SDK
  static void initialize() {
    _isInitialized = true;
  }

  // Check SDK Initialization
  static bool get isInitialized {
    return _isInitialized;
  }

  // Validate Username
  static String? validateUsername(String username) {
    return ValidationService.validateUsername(username);
  }

  // Validate Password
  static String? validatePassword(String password) {
    return ValidationService.validatePassword(password);
  }

  // Login Function
  static Future<bool> login({
    required String username,
    required String password,
  }) async {
    if (!_isInitialized) {
      throw StateError('Please initialize LoginSdk first');
    }

    // Validate Username
    final usernameError = validateUsername(username);
    if (usernameError != null) {
      return false;
    }

    // Validate Password
    final passwordError = validatePassword(password);
    if (passwordError != null) {
      return false;
    }

    // Perform Login
    final result = await _loginService.login(
      username: username,
      password: password,
    );

    // Save Session After Successful Login
    if (result) {
      final user = User(username: username);
      _sessionManager.saveSession(user);
    }
    return result;
  }

  // Check Login Status
  static bool get isLoggedIn {
    return _sessionManager.isLoggedIn;
  }

  // Get Current User
  static User? get currentUser {
    return _sessionManager.currentUser;
  }

  // Logout Function
  static void logout() {
    _sessionManager.clearSession();
  }
}
