import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'image_source_model.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

/// Person model
@freezed
class PersonModel with _$PersonModel {
  const PersonModel._();

  /// Constructor [PersonModel]
  factory PersonModel({
    required int id,
    required String name,
    @JsonKey(name: 'image') required ImageSourceModel imageSource,
    // @JsonKey(name: 'country.name', defaultValue: '') required String country,
    @JsonKey(name: 'birthday') DateTime? birthday,
  }) = _PersonModel;

  /// Create [PersonModel] from json
  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  /// Convert [PersonModel] to [Person]
  Person toEntity() {
    return Person(
      id: id,
      name: name,
      // country: country,
      imageSource: imageSource.toEntity(),
      birthday: birthday,
    );
  }
}
