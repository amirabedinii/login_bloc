import 'package:dio/dio.dart';

import '../models/user.dart';

class DioClass{

  final Dio _dio = Dio();

  Future<Response> get(String path) async {

    final response = await _dio.get(path);
    return response;
  }

}




