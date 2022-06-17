import 'dart:async';
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class postResult {
  String id;
  String name;

  postResult({required this.id, required this.name});
  factory postResult.createpostResult(Map<String, dynamic> object) {
    return postResult(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }
  static Future<postResult> connectToAPI(String id, param1) async {
    String apiUrl = "https://reqres.in/api/users/" + id;
    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);
    var jsonData = (jsonObject as Map<String, dynamic>)['data'];
    return postResult.createpostResult(jsonData);
  }
}
