// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
class _$EpisodeTearOff {
  const _$EpisodeTearOff();

  _Episode call(
      {required int id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      String? created}) {
    return _Episode(
      id: id,
      name: name,
      air_date: air_date,
      episode: episode,
      characters: characters,
      url: url,
      created: created,
    );
  }

  Episode fromJson(Map<String, Object> json) {
    return Episode.fromJson(json);
  }
}

/// @nodoc
const $Episode = _$EpisodeTearOff();

/// @nodoc
mixin _$Episode {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get air_date => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      String? created});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) then) =
      __$EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      String? created});
}

/// @nodoc
class __$EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(_Episode _value, $Res Function(_Episode) _then)
      : super(_value, (v) => _then(v as _Episode));

  @override
  _Episode get _value => super._value as _Episode;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_Episode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode extends _Episode {
  const _$_Episode(
      {required this.id,
      this.name,
      this.air_date,
      this.episode,
      this.characters,
      this.url,
      this.created})
      : super._();

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$_$_EpisodeFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? air_date;
  @override
  final String? episode;
  @override
  final List<String>? characters;
  @override
  final String? url;
  @override
  final String? created;

  @override
  String toString() {
    return 'Episode(id: $id, name: $name, air_date: $air_date, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Episode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.air_date, air_date) ||
                const DeepCollectionEquality()
                    .equals(other.air_date, air_date)) &&
            (identical(other.episode, episode) ||
                const DeepCollectionEquality()
                    .equals(other.episode, episode)) &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(air_date) ^
      const DeepCollectionEquality().hash(episode) ^
      const DeepCollectionEquality().hash(characters) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$EpisodeCopyWith<_Episode> get copyWith =>
      __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EpisodeToJson(this);
  }
}

abstract class _Episode extends Episode {
  const factory _Episode(
      {required int id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      String? created}) = _$_Episode;
  const _Episode._() : super._();

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get air_date => throw _privateConstructorUsedError;
  @override
  String? get episode => throw _privateConstructorUsedError;
  @override
  List<String>? get characters => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EpisodeCopyWith<_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}
