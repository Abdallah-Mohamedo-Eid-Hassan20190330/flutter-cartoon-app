import 'package:cubit_training/data/models/characters_model.dart';
import 'package:cubit_training/data/web_services/charachter_web_services.dart';

class Repo {
  late CharacterWebServices characterWebServices;

  Repo(this.characterWebServices);

  Future<Characters?> getCharacters() async {
    Characters? data = await characterWebServices.getCharacters();
    print("=========== from Repo ==========");
    print(data!.results[0].name);
    return data;
  }
}
