import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_details_state.freezed.dart';

@freezed
sealed class TvShowDetailsState with _$TvShowDetailsState {
  const factory TvShowDetailsState({
    required bool isFavorite,
  }) = _TvShowDetailsState;
}
