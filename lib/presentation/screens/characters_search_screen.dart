import 'package:cubit_training/constants/my_colors.dart';
import 'package:cubit_training/presentation/widgets/action_buttons.dart';
import 'package:cubit_training/presentation/widgets/build_body_grid.dart';
import 'package:cubit_training/presentation/widgets/search_field.dart';
import 'package:flutter/material.dart';

class CharactersSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: searchField(),
        actions: [
          exitButton(context),
        ],
      ),
      body: buildBody(),
    );
  }
}
