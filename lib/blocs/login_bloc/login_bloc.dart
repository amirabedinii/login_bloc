import 'package:bloc/bloc.dart';
import 'package:login_bloc/blocs/login_bloc/login_event.dart';
import 'package:login_bloc/blocs/login_bloc/login_state.dart';
import 'package:login_bloc/repos/user_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(LoginState()) {
    on<LoginUsernameChanged>(
        (event, emit) => emit(state.copyWith(username: event.username)));
    on<LoginPasswordChanged>(
        (event, emit) => emit(state.copyWith(password: event.password)));
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  final UserRepository _userRepository;

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    print("login submitted");
    try {
      final user = await _userRepository.getUser();
      print("fecthed ${user.userName}");
      emit(LoginStateSuccess(
          username: user.userName ?? "not filled",
          password: user.password ?? "not filled",
          id: user.id ?? "not filled"));
    } catch (e) {
      emit(
        LoginStateFailed(
          username: 'Error',
          password: 'Error',
          id: 'Error',
          error: e.toString(),
        ),
      );
    }
  }
}
