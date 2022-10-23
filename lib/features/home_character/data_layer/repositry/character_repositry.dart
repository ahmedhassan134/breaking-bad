import 'package:first/features/home_character/data_layer/web_service/character_service.dart';

import '../model/character_model.dart';

class CharacterRepo {
  final CharacterService characterService;

  CharacterRepo(this.characterService);

  Future<List<CharacterModel>?> getAllCharacters() async {
    final characters = await characterService.getAllData();

    return characters
        .map((character) => CharacterModel.fromJson(character))
        .toList();
  }
}
