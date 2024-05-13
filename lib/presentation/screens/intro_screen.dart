import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/constants/strings.dart';
import 'package:cubit_training/data/repository/repo.dart';
import 'package:cubit_training/data/web_services/charachter_web_services.dart';
import 'package:cubit_training/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CharactersCubit(Repo(CharacterWebServices()))..getCharacters(""),
        )
      ],
      child: MaterialApp(
        routes: appRoutes,
        initialRoute: homeRoute,
      ),
    );
  }
}
