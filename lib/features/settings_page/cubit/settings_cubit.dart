import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  var isFingerprintEnabled = true;

  void toggleFingerprint() {
    isFingerprintEnabled = !isFingerprintEnabled;
  }
}
