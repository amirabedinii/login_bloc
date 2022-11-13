import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/login_bloc/login_bloc.dart';
import '../../../blocs/login_bloc/login_event.dart';
import '../../../blocs/login_bloc/login_state.dart';

class UserNameInput extends StatelessWidget {
  UserNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextField(
          decoration: const InputDecoration(
            labelText: 'Username',
          ),
          onChanged: (value) => context.read<LoginBloc>().add(
            LoginUsernameChanged(username: value),
          ),
        );
      },
    );
  }
}
