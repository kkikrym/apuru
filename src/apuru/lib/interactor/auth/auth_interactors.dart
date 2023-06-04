import '../importer.dart';

Future<Map<String, dynamic>> getUserInfo() {
  const String path = '/auth/user/';
  BasicApiInteractor interactor = BasicApiInteractor(hostPath);
  Future<Map<String, dynamic>> data = interactor.getFromApi(path);
  return data;
}

class Tokens {
  String accessToken;
  String refreshToken;

  Tokens(this.accessToken, this.refreshToken);
}

class AuthInteractor extends BasicApiInteractor {
  AuthInteractor(host) : super(host);

  Future<Map<String, dynamic>> login() async {
    String path = '/auth/login/';
    return super.getFromApi(path);
  }
}
