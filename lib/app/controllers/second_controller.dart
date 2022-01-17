import 'package:get/get.dart';
import '../data/models/character/character.dart';
import '../data/models/episode/episode.dart';
import '../data/providers/api_repository.dart';
import '../routes/app_routes.dart';

class SecondController extends GetxController {
  ApiRepository _apiRepository = ApiRepository();

  List<Episode>? _listEpisodesBackup;

  List<Episode>? _listEpisodes;
  List<Episode>? get listEpisodes => _listEpisodes;

  Map<String, Character>? _mapCharacter;
  Map<String, Character>? get mapCharacter => _mapCharacter;

  @override
  void onReady() async {
    await getCharacterData();
    await getEpisodesData();
    super.onReady();
  }

  Future<void> getEpisodesData() async {
    _listEpisodesBackup = await _apiRepository.getEpisodesData();
    _listEpisodes = _listEpisodesBackup;
    update(['listEpisodesContainer']);
  }

  Future<void> getCharacterData() async {
    _mapCharacter = await _apiRepository.getCharactersData();
  }

  void goToEpisode(Episode episode) {
    Get.toNamed(AppRoutes.THIRD, arguments: episode);
  }

  void onInputChanged(String text) {
    String _search = text.toLowerCase().trim();

    if (_search.length > 0) {
      if (_listEpisodesBackup != null) {
        List<Episode> _newList = [];
        for (var i = 0; i < _listEpisodesBackup!.length; i++) {
          String _nameToCompare = _listEpisodesBackup![i].name!.toLowerCase();

          if (_nameToCompare.contains(_search)) {
            _newList.add(_listEpisodesBackup![i]);
          }
        }
        _listEpisodes = _newList;
      }
    } else {
      _listEpisodes = _listEpisodesBackup;
    }

    update(['listEpisodesContainer']);
  }
}
