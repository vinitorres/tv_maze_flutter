import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tv_shows_app/core/data/datasources/local/auth_local_data_source.dart';

part 'pin_code_state.dart';

class PinCodeCubit extends Cubit<PinCodeState> {
  PinCodeCubit(this.authLocalDataSource) : super(PinCodeInitial());

  final AuthLocalDataSource authLocalDataSource;
  

}
