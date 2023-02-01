import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/core/data/datasources/local/auth_local_data_source.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.authLocalDataSource) : super(SettingsInitial());

  final AuthLocalDataSource authLocalDataSource;

  var isFingerprintEnabled = true;

  void toggleFingerprint() {
    isFingerprintEnabled = !isFingerprintEnabled;
  }
}
