import '../importer.dart';

Future<Map<String, dynamic>> getUserList() {
  const String path = '/api/users/?format=json';
  BasicApiInteractor interacotor = BasicApiInteractor(hostPath);
  Future<Map<String, dynamic>> data = interacotor.getFromApi(path);
  return data;
}
