import 'package:login_bloc/consts/consts.dart';

import '../models/user.dart';
import '../services/dio_class.dart';

class UserRepository {
  UserRepository(){
    _dioClass = DioClass();
    getUser();
  }

  User? _user;
  late DioClass _dioClass ;

  Future<void> getUser() async {
    final response = await _dioClass.get(baseUrl);
    _user = User.fromJson(response.data);

  }
}