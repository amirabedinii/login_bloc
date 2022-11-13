import 'package:flutter/material.dart';
import 'package:login_bloc/views/main_view/widgets/login_button.dart';
import 'package:login_bloc/views/main_view/widgets/password_input.dart';
import 'package:login_bloc/views/main_view/widgets/show_data.dart';
import 'package:login_bloc/views/main_view/widgets/username_input.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PasswordInput(),
              UserNameInput(),
              LoginButton(),
              ShowData(),
            ],
          ),
        ),
        )
      ),
    );
  }
}
