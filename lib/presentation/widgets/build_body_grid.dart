import 'package:cubit_training/business/characters_cubit.dart';
import 'package:cubit_training/business/characters_state.dart';
import 'package:cubit_training/presentation/widgets/item_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

Widget buildBody() {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  return BlocBuilder<CharactersCubit, CharactersStates>(
    builder: (context, state) {
      // var cubit = CharactersCubit.get(context);
      var cubit = context.read<CharactersCubit>();
      // var watch = context.watch<CharactersCubit>();
      if (state is DataLoaded) {
        return SmartRefresher(
          onRefresh: () async {
            cubit.isSearching ? print("ddd") : cubit.getCharacters("");
          },
          // header: WaterDropHeader(),
          enablePullDown: true,
          controller: _refreshController,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 1 / 1,
                    ),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    children: cubit.isSearching
                        ? cubit.searchedCharacters!.results.map((val) {
                            print(cubit.isSearching);
                            return ItemViewer(val, context);
                          }).toList()
                        : cubit.characters!.results.map((val) {
                            return ItemViewer(val, context);
                          }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

// Widget buildingData(state) {
//   return Container(
//     color: Colors.black,
//     child: Column(
//       children: [
//         GridView(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 3,
//             mainAxisSpacing: 3,
//             childAspectRatio: 1 / 1,
//           ),
//           shrinkWrap: true,
//           physics: const ClampingScrollPhysics(),
//           children: state.characters.results.map((val) {
//             return ItemViewer(val);
//           }).toList(),
//         ),
//       ],
//     ),
//   );
// }
