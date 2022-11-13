import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
   LoginState({
    this.username = '',
    this.password = '',
    this.id = '',
  });

  String username;
  String password;
  String id;


   LoginState copyWith({
     String? id,
     String? username,
     String? password,
   }) {
     return LoginState(
       username: username ?? this.username,
       password: password ?? this.password,
        id: id ?? this.id,
     );
   }


   @override
  // TODO: implement props
  List<Object?> get props => [username, password, id];
}
class LoginStateFailed extends LoginState{

  LoginStateFailed({super.password,super.username,super.id,required String error}):
      _error=error;


 final String _error;
}

class LoginStateSuccess extends LoginState {
  LoginStateSuccess({super.password,super.username,super.id});
}