import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
abstract class Character implements _$Character {
  const Character._();

  const factory Character({
    required int id,
    String? name,
    String? status,
    String? species,
    String? gender,
    String? character,
    String? image,
    String? url,
    String? created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
