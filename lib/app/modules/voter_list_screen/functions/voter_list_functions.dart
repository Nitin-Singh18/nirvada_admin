import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nirvada_admin/app/data/models/voter_user_mode.dart';

class VoterListFunction {
  static Future<List<VoterUserModel>> getAllVoters() async {
    try {
      Uri uri = Uri.parse("https://fragile-scarf-duck.cyclic.app/user/get");

      final response = await http.get(
        uri,
      );

      List<VoterUserModel> model = [];

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);

        Map<String, dynamic> data = json.decode(response.body);

        List list = data['data'];

        model = list.map((e) => VoterUserModel.fromJson(e)).toList();
      }

      return model;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
