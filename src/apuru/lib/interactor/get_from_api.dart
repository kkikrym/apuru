import 'dart:convert';
import 'dart:io';
import 'package:apuru/interface/importer.dart';
import 'package:http/http.dart' as http;

const String hostPath = 'http://52.68.252.80/';

class ApiInteractor {
  bool isAuthenticated = false;
  List<String> tokens = [];

  Future<Map<String, dynamic>> getFromApi(path) async {
    http.Response res = await http.get(Uri.parse(hostPath + path));
    Map<String, dynamic> data = _requestToMap(res);
    return data;
  }

  Future<Map<String, dynamic>> _getTokens(String host, path) async {
    http.Response res = await http.get(Uri.parse(host + path));
    Map<String, dynamic> data = _requestToMap(res);
    return data;
  }

  Future<Map<String, dynamic>> getProtectedDataFromApi(
      host, path, token) async {
    http.Response res = await http.get(Uri.parse(host + path),
        headers: {HttpHeaders.authorizationHeader: "JWT " + token});
    Map<String, dynamic> data = _requestToMap(res);
    return data;
  }

  Map<String, dynamic> _requestToMap(res) {
    Map<String, dynamic> data = {};
    data['statusCode'] = res.statusCode;
    data['body'] = jsonDecode(res.body);
    return data;
  }
}
