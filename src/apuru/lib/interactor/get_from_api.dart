import 'dart:convert';
import 'dart:io';
import 'package:apuru/interface/importer.dart';
import 'package:http/http.dart' as http;

const String hostPath = 'http://127.0.0.1';

class ApiInteractor {
  final bool isAuthenticated = false;

  Map<String, dynamic> _requestToMap(res) {
    Map<String, dynamic> data = {};
    data['statusCode'] = res.statusCode;
    data['body'] = jsonDecode(res.body);
    return data;
  }

  Future<Map<String, dynamic>> _getTokens(String host, path) async {
    http.Response res = await http.get(Uri.parse(host + path));
    Map<String, dynamic> data = _requestToMap(res);
    return data;
  }

  Future<Map<String, dynamic>> getFromApi(host, path) async {
    http.Response res = await http.get(Uri.parse(host + path), headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
      "Access-Control-Allow-Headers":
          "Origin, X-Requested-With, Content-Type, Accept"
    });
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
}
