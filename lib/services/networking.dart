import 'package:http/http.dart' as http;
import '../services/location.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  late final String url;

  Future getata() async {
    Location loc = Location();
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
