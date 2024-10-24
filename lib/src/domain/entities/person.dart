import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_source.dart';

part 'person.freezed.dart';

/// Person entity - Person from cast TV show
@freezed
class Person with _$Person {
  const Person._();

  /// Constructor [Person]
  const factory Person({
    required int id,
    required String name,
    // required String country,
    ImageSource? imageSource,
    DateTime? birthday,
  }) = _Person;
}
