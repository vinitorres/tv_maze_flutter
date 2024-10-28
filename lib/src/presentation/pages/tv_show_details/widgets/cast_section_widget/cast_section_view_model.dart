import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/domain.dart';
import 'cast_section_state.dart';

class CastSectionViewModel extends Cubit<CastSectionState> {
  CastSectionViewModel(this._getCastUsecase)
      : super(CastSectionState.initial());

  final IGetCastUsecase _getCastUsecase;

  loadCast(int tvShowId) async {
    emit(CastSectionState.loading());

    final response = await _getCastUsecase.call(tvShowId);

    emit(
      response.fold((error) {
        return CastSectionState.error(
          message: error.message,
        );
      }, (success) {
        return CastSectionState.loaded(cast: success);
      }),
    );
  }
}
