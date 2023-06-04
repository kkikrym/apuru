import 'package:apuru/interface/importer.dart';
import 'package:http/http.dart' as http;

const String hostPath = 'http://52.68.252.80';

class BasicApiInteractor {
  final String host;
  BasicApiInteractor(this.host);

  Future<Map<String, dynamic>> getFromApi(String path) async {
    Response res = await http.get(Uri.parse(host + path));
    Map<String, dynamic> json = responseToMap(res);
    return json;
  }

  Future<Map<String, dynamic>> postToApi(path, data) async {
    Future<Response> res = http.post(path, body: data);
    Map<String, dynamic> json = responseToMap(res);
    return json;
  }

  Map<String, dynamic> responseToMap(res) {
    Map<String, dynamic> data = {};
    data['statusCode'] = res.statusCode;
    String str = utf8.decode(res.bodyBytes);
    data['body'] = jsonDecode(str);
    return data;
  }
}
