import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<Response> login(String email, String password) async {
    return await _dio.post('http://10.0.2.2:8000/api/login', data: {
      'email': email,
      'password': password,
    });
  }

  Future<Response> getData(String token) async {
    return await _dio.get(
      'http://10.0.2.2:8000/api/save-presensi',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }
}
