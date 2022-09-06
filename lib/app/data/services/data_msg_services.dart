import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl;

  DataServices({required this.baseUrl});

  Future<List<dynamic>> getMessagesData({required String endpoint}) async {
    var url = Uri.parse(this.baseUrl + endpoint);
    var response = await http.get(url);
    print(response.body);
    return [];
  }
}
