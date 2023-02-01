import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  static const pinCodeKey = 'pin_code';
  static const isFingerprintEnabledKey = 'is_fingerprint_enabled';

  Future<SharedPreferences> _getInstance() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance;
  }

  Future<bool> toggleFingerprint(bool isEnabled) async {
    final prefs = await _getInstance();
    return prefs.setBool(isFingerprintEnabledKey, isEnabled);
  }

  Future<bool> getIsFingerprintEnabled() async {
    final prefs = await _getInstance();
    return prefs.getBool(isFingerprintEnabledKey) ?? false;
  }

  Future<String> getPinCode() async {
    final prefs = await _getInstance();
    return prefs.getString(pinCodeKey) ?? '';
  }

  Future<bool> changePinCode(String newPinCode) async {
    final prefs = await _getInstance();
    return prefs.setString(pinCodeKey, newPinCode);
  }

  Future<bool> removePinCode() async {
    final prefs = await _getInstance();
    return prefs.remove(pinCodeKey);
  }

  Future<bool> hasPinCode() async {
    final pinCode = await getPinCode();
    return pinCode.isNotEmpty;
  }
}