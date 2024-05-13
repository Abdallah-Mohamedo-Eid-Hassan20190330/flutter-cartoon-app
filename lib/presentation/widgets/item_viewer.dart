import 'package:cubit_training/data/models/results_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ItemViewer(Results item) {
  return Container(
    margin: EdgeInsets.all(2),
    padding: EdgeInsets.all(2),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: GridTile(
      child: item.image.isNotEmpty
          ? FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image: item.image,
            )
          : Text("dd"),
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
  );
}
