import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

/// Schedule entity - Schedule from TV show
@freezed
class Schedule with _$Schedule {
  const Schedule._();

  /// Constructor [Schedule]
  const factory Schedule({
    required String time,
    required List<String> days,
  }) = _Schedule;
}
