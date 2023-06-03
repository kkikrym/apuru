import '../importer.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> getUserList() {
  const String path = 'api/users/';
  Future<Map<String, dynamic>> data = ApiInteractor().getFromApi(path);
  return data;
}
