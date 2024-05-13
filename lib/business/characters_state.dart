import 'package:cubit_training/data/models/characters_model.dart';

abstract class CharactersStates {}

class InitialState extends CharactersStates {}

class DataLoaded extends CharactersStates {
  // Characters? characters;
  // DataLoaded(this.characters);
}

class DataLoading extends CharactersStates {}

class LoadingState extends CharactersStates {}

class GetSearched extends CharactersStates {}
