import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nirvada_admin/app/data/models/candidate_model.dart';

class ElectionStatusFunction {
  static Future<List<CandidateModel>?> getAllCandidateDetails() async {
    try {
      Uri uri = Uri.parse(
          "https://fragile-scarf-duck.cyclic.app/candidate_details/get");

      final response = await http.get(uri, headers: {
        "Content-Type": "application/json",
      });

      List<CandidateModel> model = [];

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> data = json.decode(response.body);

        List list = data['data'];

        List<Map<String, dynamic>> mappedList =
            list.cast<Map<String, dynamic>>();

        model = mappedList.map((e) => CandidateModel.fromJson(e)).toList();

        return model;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //https://fragile-scarf-duck.cyclic.app/vote_casting/get
}
