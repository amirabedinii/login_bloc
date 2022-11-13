import 'package:dio/dio.dart';

import '../models/user.dart';

class DioClass{

  final Dio _dio = Dio();

  Future<Response> get(String path) async {
    print("waiting fot response");
    final response = await _dio.get(path);
    print(response);
    return response;
  }

}




