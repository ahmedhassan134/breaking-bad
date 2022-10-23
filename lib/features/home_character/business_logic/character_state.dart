part of 'character_cubit.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}


class SucessfulState extends CharacterState{
  final List<CharacterModel> character;
  SucessfulState(this.character);
}


