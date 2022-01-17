import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
abstract class Episode implements _$Episode {
  const Episode._();

  const factory Episode({
    required int id,
    String? name,
    String? air_date,
    String? episode,
    List<String>? characters,
    String? url,
    String? created,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
