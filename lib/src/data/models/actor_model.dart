import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'actor_model.freezed.dart';
part 'actor_model.g.dart';

/// Actor model
@freezed
class ActorModel with _$ActorModel {
  const ActorModel._();

  /// Constructor [ActorModel]
  factory ActorModel({
    required int id,
    required String name,
    @JsonKey(name: 'image.medium', defaultValue: '') required String thumb,
    @JsonKey(name: 'image.original', defaultValue: '') required String poster,
    @JsonKey(name: 'country.name', defaultValue: '') required String country,
    @JsonKey(name: 'birthday') DateTime? birthday,
  }) = _Actor;

  /// Create [ActorModel] from json
  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);

  /// Convert [ActorModel] to [Actor]
  Actor toEntity() {
    return Actor(
      id: id,
      name: name,
      country: country,
      thumb: thumb,
      poster: poster,
      birthday: birthday,
    );
  }
}
