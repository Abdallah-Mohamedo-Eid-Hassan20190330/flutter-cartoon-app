import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cubit_training/constants/my_colors.dart';
import 'package:cubit_training/data/models/results_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Results item;

  const CharacterDetailsScreen({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sliverBody(),
      backgroundColor: MyColors.myGrey,
    );
  }

  Widget sliverBody() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: MyColors.myYellow,
          pinned: true,
          expandedHeight: 500,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              item.name,
              style: const TextStyle(color: Colors.black),
            ),
            background: Image.network(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
              delegate: SliverChildListDelegate(
            [
              buildData('Gender : ', item.gender),
              buildDivider(300),
              buildData('Species : ', item.species),
              buildDivider(300),
              buildData('Status : ', item.status),
              buildDivider(300),
              if (item.type.isNotEmpty) buildData('Type : ', item.type),
              if (item.type.isNotEmpty) buildDivider(310)
            ],
          )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 7.0,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText('Flicker Frenzy'),
                    FlickerAnimatedText('Night Vibes On'),
                    FlickerAnimatedText("C'est La Vie !"),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 540,
          ),
        ),
      ],
    );
  }

  Widget buildData(String main, String explain) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: main,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: explain,
            style: TextStyle(
              color: MyColors.myWhite,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      endIndent: endIndent,
      color: MyColors.myYellow,
      thickness: 2,
    );
  }
}
