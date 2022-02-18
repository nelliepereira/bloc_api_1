import 'package:http/http.dart' as http;

class PhotoService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/photos";

  static Future<http.Response> getRequest() async {
    http.Response response;

    final url = Uri.parse(baseUrl);

    try {
      response = await http.get(url);
    } on Exception catch (e) {
      rethrow;
    }

    return response;
  }
}