import '../importer.dart';
import 'package:http/http.dart' as http;

const String apiPath = '/api';

Future<Map<String, dynamic>> getUserList() {
  String path = '$apiPath/users';
  Future<Map<String, dynamic>> data =
      ApiInteractor().getFromApi(hostPath, path);
  return data;
}
