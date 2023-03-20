import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nirvada_admin/app/data/models/election_model.dart';

class HomeFunctions {
  static Future<List<ElectionModel>?> getElectionDetails() async {
    try {
      Uri uri = Uri.parse(
          "https://fragile-scarf-duck.cyclic.app/election_details/get");

      final response = await http.get(uri);

      List<ElectionModel> model = [];

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> data = json.decode(response.body);

        print(data);

        List list = data['data'];

        print(list);

        model =
            list.map((e) => ElectionModel.fromJson(json.decode(e))).toList();

        return model;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
