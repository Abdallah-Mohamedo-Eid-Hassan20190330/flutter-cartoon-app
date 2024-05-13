import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/business/characters_state.dart';
import 'package:cubit_training/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget exitButton(context) {
  return BlocBuilder<CharactersCubit, CharactersStates>(
      builder: (context, state) {
    var cubit = context.read<CharactersCubit>();
    return IconButton(
      onPressed: () {
        cubit.toggleSearch();
        Navigator.pushReplacementNamed(context, homeRoute);
      },
      icon: const Icon(Icons.clear),
    );
  });
}

Widget searchButton(context) {
  return BlocBuilder<CharactersCubit, CharactersStates>(
      builder: (context, state) {
    var cubit = context.read<CharactersCubit>();
    return IconButton(
      onPressed: () {
        cubit.toggleSearch();
        Navigator.pushReplacementNamed(context, charactersRoute);
      },
      icon: const Icon(Icons.search),
    );
  });
}
