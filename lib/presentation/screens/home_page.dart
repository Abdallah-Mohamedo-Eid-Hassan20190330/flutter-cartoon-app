import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/business/characters_state.dart';
import 'package:cubit_training/constants/my_colors.dart';
import 'package:cubit_training/presentation/widgets/action_buttons.dart';
import 'package:cubit_training/presentation/widgets/build_body_grid.dart';
import 'package:cubit_training/presentation/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text("Characters"),
        actions: [
          searchButton(context),
        ],
        centerTitle: true,
      ),
      body: buildBody(),
    );
  }
}
