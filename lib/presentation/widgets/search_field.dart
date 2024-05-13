import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/business/characters_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget searchField() {
  TextEditingController controller = TextEditingController();

  return BlocBuilder<CharactersCubit, CharactersStates>(
    builder: (context, state) {
      var cubit = context.read<CharactersCubit>();
      return TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Type To Search...",
        ),
        onChanged: (val) {
          print(val);
          cubit.getSearchedCharacters(val.trim());
          // cubit.getSearchedCharacters(val);
        },
      );
    },
  );
}
