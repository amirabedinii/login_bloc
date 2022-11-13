import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc/blocs/login_bloc/login_bloc.dart';

import '../../../blocs/login_bloc/login_event.dart';
import '../../../blocs/login_bloc/login_state.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
          onChanged: (pass) => context.read<LoginBloc>().add(
                LoginPasswordChanged(password: pass),
              ),
        );
      },
    );
  }
}
