import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc/repos/user_repository.dart';
import "package:bloc/bloc.dart";
import 'package:login_bloc/views/main_view/main_view.dart';

import 'blocs/login_bloc/login_bloc.dart';

void main() {
  runApp(
   App(userRepository:  UserRepository()),
  );
}

class App extends StatelessWidget {

  App({Key? key,required UserRepository userRepository}) :
        _userRepository = userRepository,
        super(key: key);


  final UserRepository _userRepository;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(userRepository: _userRepository),
      child: MaterialApp(
        title: 'Login Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainView(),
      ),
    );
  }
}

