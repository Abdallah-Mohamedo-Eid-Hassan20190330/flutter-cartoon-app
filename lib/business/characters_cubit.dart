import 'package:cubit_training/business/characters_state.dart';
import 'package:cubit_training/data/models/characters_model.dart';
import 'package:cubit_training/data/models/results_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repository/repo.dart';

class CharactersCubit extends Cubit<CharactersStates> {
  final Repo repo;
  bool isSearching = false;

  Characters? characters;
  Characters? searchedCharacters;
  Characters? temp;

  int index = 0;

  static CharactersCubit get(context) => BlocProvider.of(context);

  CharactersCubit(this.repo) : super(InitialState());

  void getCharacters(val) {
    emit(DataLoading());
    repo.getCharacters().then((value) {
      characters = value;
      searchedCharacters = value;
      print("============= from cubit ==============");
      print(value!.results[0].gender);
      emit(DataLoaded());
    });
  }

  void toggleSearch() {
    isSearching = !isSearching;
    emit(DataLoaded());
  }

  void getSearchedCharacters(String val) {
    // searchedCharacters!.results = characters!.results.toList(); // pass by reference :
    searchedCharacters = characters!.copyWith(); // pass by value :
    searchedCharacters!.results = characters!.results
        .where((character) => character.name.toLowerCase().startsWith(val))
        .toList();
    // print(characters!.results[0].gender);
    // print(searchedCharacters!.results[0].name);
    emit(DataLoaded());
  }
}
