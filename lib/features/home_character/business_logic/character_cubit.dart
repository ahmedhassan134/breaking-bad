import 'package:bloc/bloc.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:first/features/home_character/data_layer/repositry/character_repositry.dart';
import 'package:first/features/product_details/data_layer/repositry/quote_repositry.dart';
import 'package:meta/meta.dart';

import '../../product_details/data_layer/model/quote_model.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit(this.characterRepo) : super(CharacterInitial());
  List<CharacterModel> characterList = [];

  final CharacterRepo characterRepo;


  List<CharacterModel> getCharacters() {
    characterRepo.getAllCharacters().then((character) {
      emit(SucessfulState(character!));
      characterList = character;
    });
    return characterList;
  }


}
