import 'package:cubit_training/constants/strings.dart';
import 'package:cubit_training/data/models/characters_model.dart';
import 'package:dio/dio.dart';

class CharacterWebServices {
  late Dio dio;

  CharacterWebServices() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      receiveTimeout: Duration(seconds: 5),
      connectTimeout: Duration(seconds: 5),
    );
    dio = Dio(baseOptions);
  }

  Future<Characters?> getCharacters() async {
    try {
      var data = await dio.get(allCharacters);
      print("=========== Successful ===========");
      print(data);
      return Characters.fromJson(data.data);
    } catch (e) {
      print(e.toString());
    }
  }
}
