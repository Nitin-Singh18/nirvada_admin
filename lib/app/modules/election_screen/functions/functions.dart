import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nirvada_admin/app/data/models/election_model.dart';

class ElectionFunction {
  static Future<void> sendAlertMessage(int date) async {
    try {
      Uri uri = Uri.parse(
        "https://fragile-scarf-duck.cyclic.app/sms/send_alert_message",
      );

      final response = await http.post(
        uri,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({"date": date}),
      );

      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> sendLoginMessage() async {
    try {
      Uri uri = Uri.parse(
          "https://fragile-scarf-duck.cyclic.app/sms/send_alert_message");

      final response = await http.get(uri);

      print(response.body);
    } catch (e) {
      print(e);
    }
  }
}
