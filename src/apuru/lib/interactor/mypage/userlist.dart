import '../importer.dart';
import 'package:http/http.dart' as http;

const String apiPath = '/api';

Future<Map<String, dynamic>> getUserList() {
  String path = '$apiPath/users/?format=json';
  Future<Map<String, dynamic>> data =
      ApiInteractor().getFromApi(hostPath, path);
  return data;
}
