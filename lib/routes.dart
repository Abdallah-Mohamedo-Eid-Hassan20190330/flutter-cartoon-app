import 'dart:ffi';

import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/constants/strings.dart';
import 'package:cubit_training/data/repository/repo.dart';
import 'package:cubit_training/data/web_services/charachter_web_services.dart';
import 'package:cubit_training/presentation/screens/characters_search_screen.dart';
import 'package:cubit_training/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Repo repo = Repo(CharacterWebServices());

Map<String, WidgetBuilder> appRoutes = {
  homeRoute: (context) => HomePage(),
  charactersRoute: (context) {
    return CharactersSearchScreen();
  },
};
