import 'package:cubit_training/constants/strings.dart';
import 'package:cubit_training/data/models/results_model.dart';
import 'package:cubit_training/presentation/screens/character_details_screen.dart';
import 'package:cubit_training/presentation/screens/characters_search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ItemViewer(Results item, context) {
  return Container(
    margin: EdgeInsets.all(2),
    padding: EdgeInsets.all(2),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailsScreen(item: item),
          ),
        );
      },
      child: GridTile(
        child: item.image.isNotEmpty
            ? FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                image: item.image,
              )
            : Container(),
        footer: Container(
          color: Colors.black54,
          child: Center(
              child: Text(
            item.name,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    ),
  );
}
