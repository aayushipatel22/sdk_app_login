import 'package:test/test.dart';
import 'package:demo_sdk/demo_sdk.dart';

void main() {
  test('SDK should initialize successfully', () {
    LoginSdk.initialize();

    expect(LoginSdk.isInitialized, true);
  });
}

