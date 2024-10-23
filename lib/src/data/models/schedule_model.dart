import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/schedule.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

/// Schedule model
@freezed
class ScheduleModel with _$ScheduleModel {
  const ScheduleModel._();

  /// Constructor [ScheduleModel]
  const factory ScheduleModel({
    required String time,
    required List<String> days,
  }) = _ScheduleModel;

  /// Create [ScheduleModel] from json
  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);

  /// Convert [ScheduleModel] to [Schedule]
  Schedule toEntity() => Schedule(
        time: time,
        days: days,
      );
}
