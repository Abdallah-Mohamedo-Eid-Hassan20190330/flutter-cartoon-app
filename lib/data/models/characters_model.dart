import 'package:cubit_training/data/models/info_model.dart';
import 'package:cubit_training/data/models/results_model.dart';

class Characters {
  late List<Results> results;

  Characters({required this.results});

  Characters.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Characters copyWith({
    List<Results>? results,
  }) =>
      Characters(
        results: results ?? this.results,
      );
}
