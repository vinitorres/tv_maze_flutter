import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/domain.dart';

part 'cast_section_state.freezed.dart';

@freezed
abstract class CastSectionState with _$CastSectionState {
  const factory CastSectionState.initial() = CastSectionStateInitial;
  const factory CastSectionState.loading() = CastSectionStateLoading;
  const factory CastSectionState.loaded({
    required List<Person> cast,
  }) = CastSectionStateLoaded;
  const factory CastSectionState.error({
    required String message,
  }) = CastSectionStateError;
}
