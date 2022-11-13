import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/login_bloc/login_bloc.dart';
import '../../../blocs/login_bloc/login_event.dart';
import '../../../blocs/login_bloc/login_state.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.username.isNotEmpty
              ? () {
            print("Login button pressed before fetching data");
            context.read<LoginBloc>().add(LoginSubmitted());
          print("Login button pressed");}
              : null,
          child: const Text('Login'),
        );
      },
    );
  }
}
