import 'package:login_bloc/consts/consts.dart';

import '../models/user.dart';
import '../services/dio_class.dart';

class UserRepository {
  UserRepository() {
    _dioClass = DioClass();
    getUser();
  }

  User? _user;
  late DioClass _dioClass;

  Future<User> getUser() async {
    print("waiting for data");
    final response = await _dioClass.get(baseUrl);
    print("response ${response}");
    _user = User.fromJson(response.data[0]);
    return _user!;
  }
}
