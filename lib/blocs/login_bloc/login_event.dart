import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginUsernameChanged extends LoginEvent {
  const LoginUsernameChanged({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}