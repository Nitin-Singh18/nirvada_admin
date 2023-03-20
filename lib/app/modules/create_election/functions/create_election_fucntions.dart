import 'dart:convert';

import 'package:http/http.dart' as http;

class CreateElectionFuntions {
  static Future<void> createElectionFunctions(
      Map<String, dynamic> electionDetails) async {
    try {
      Uri uri = Uri.parse(
          "https://upset-erin-cardigan.cyclic.app/election_details/insert");

      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: json.encode(electionDetails),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
      }

      print(response.body);
    } catch (e) {
      print(e);
    }
  }
}
