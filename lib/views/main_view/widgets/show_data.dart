import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/login_bloc/login_bloc.dart';
import '../../../blocs/login_bloc/login_state.dart';

class ShowData extends StatelessWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => current is LoginStateSuccess,
      builder: (context, state) {
        if(state is LoginStateSuccess) {
          return Text("Data: ${state.username}  ${state.id}");
        }
        else if(state is LoginStateFailed) {
          return Text("Failed");
        }
        else {
          return Text("No data");
        }
      },
    );
  }
}
