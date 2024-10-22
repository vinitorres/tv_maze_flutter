import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  const factory Schedule({
    required String time,
    required List<String> days,
  }) = _Schedule;
}
