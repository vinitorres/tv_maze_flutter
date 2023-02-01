import 'package:local_auth/local_auth.dart';

class AuthManager {
  final LocalAuthentication auth = LocalAuthentication();

  hasBiometry() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();

    return canAuthenticate;
  }

  Future<bool> validateWithBiometry() async {
    return await auth.authenticate(
      localizedReason: 'Authenticate to access your favorites',
      options: AuthenticationOptions(
        useErrorDialogs: true,
        biometricOnly: true,
      ),
    );
  }
}
