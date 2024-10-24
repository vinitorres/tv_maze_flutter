import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'image_source_model.freezed.dart';
part 'image_source_model.g.dart';

@freezed
class ImageSourceModel with _$ImageSourceModel {
  const ImageSourceModel._();

  const factory ImageSourceModel({
    @Default('') String original,
    @Default('') String medium,
  }) = _ImageSourceModel;

  /// Create [ImageSourceModel] from json
  factory ImageSourceModel.fromJson(Map<String, dynamic> json) =>
      _$ImageSourceModelFromJson(json);

  ImageSource toEntity() => ImageSource(
        original: original,
        medium: medium,
      );
}
