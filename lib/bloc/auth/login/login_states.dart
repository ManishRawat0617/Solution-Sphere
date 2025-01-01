import 'package:equatable/equatable.dart';
import 'package:solution_sphere/config/enum.dart';

class LoginStates extends Equatable {
  final String email;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;

  const LoginStates(
      {this.email = "",
      this.password = "",
      this.message = "",
      this.postApiStatus = PostApiStatus.initial});

  LoginStates copyWith(
      {String? email,
      String? password,
      PostApiStatus? postApiStatus,
      String? message}) {
    return LoginStates(
        email: email ?? this.email,
        password: password ?? this.password,
        message: message ?? this.message,
        postApiStatus: postApiStatus ?? this.postApiStatus);
  }

  @override
  List<Object> get props => [email, password, postApiStatus, message];
}
