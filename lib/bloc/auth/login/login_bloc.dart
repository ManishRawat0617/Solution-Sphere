import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:solution_sphere/config/enum.dart';
import 'package:solution_sphere/respository/auth/login_respository.dart';
import 'package:solution_sphere/bloc/auth/login/login_events.dart';
import 'package:solution_sphere/bloc/auth/login/login_states.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginRespository loginRespository = LoginRespository();

  LoginBloc() : super(LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onLoginApi);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    print(state.email);
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    print(state.password);
    emit(state.copyWith(password: event.password));
  }

  Future<Map<String, dynamic>?> _onLoginApi(
      LoginApi event, Emitter<LoginStates> emit) async {
    Map data = {"email": state.email, "password": state.password};
    if (kDebugMode) {
      print("this is the input data ${data}");
    }
    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    await loginRespository.loginUser(data).then((value) {
      if (value.error.isNotEmpty) {
        emit(state.copyWith(
            message: value.error.toString(),
            postApiStatus: PostApiStatus.error));
      } else {
        emit(state.copyWith(
            message: "Login Successful", postApiStatus: PostApiStatus.success));
      }
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          message: error.toString(), postApiStatus: PostApiStatus.error));
    });
  }
}
