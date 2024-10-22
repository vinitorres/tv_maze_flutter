import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/schedule.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  const ScheduleModel._();

  const factory ScheduleModel({
    required String time,
    required List<String> days,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);

  Schedule toEntity() => Schedule(
        time: time,
        days: days,
      );
}
