import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/character/character.dart';
import '../models/episode/episode.dart';

class ApiRepository {
  static var client = http.Client();

  Future<List<Episode>?> getEpisodesData() async {
    List<Episode> _toReturn = [];

    var url = Uri.parse('https://rickandmortyapi.com/api/episode');
    final response = await client.get(url);

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      if (body["results"] != null) {
        final results = body["results"];

        if (results.length > 0) {
          for (var i = 0; i < results.length; i++) {
            Episode episode = Episode.fromJson(results[i]);
            _toReturn.add(episode);
          }
        }
      }
    }

    return _toReturn;
  }

  Future<Map<String, Character>?> getCharactersData() async {
    Map<String, Character> _toReturn = HashMap();
    String urlName = 'https://rickandmortyapi.com/api/character';
    var url = Uri.parse(urlName);
    final response = await client.get(url);

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      if (body["results"] != null) {
        final results = body["results"];

        if (results.length > 0) {
          for (var i = 0; i < results.length; i++) {
            Character character = Character.fromJson(results[i]);

            _toReturn[character.id.toString()] = character;
          }
        }
      }
    }

    return _toReturn;
  }
}
