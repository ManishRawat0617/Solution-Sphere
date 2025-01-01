import 'package:equatable/equatable.dart';

abstract class LoginEvents extends Equatable {
  const LoginEvents();

  @override
  List<Object> get props => [];
}

class EmailChanged extends LoginEvents{

final String email;
  const EmailChanged({required this.email});

  @override
  // TODO: implement props
  List<Object> get props => [email];
}

class PasswordChanged extends LoginEvents{

final String password;
  const PasswordChanged({required this.password});

  @override
  // TODO: implement props
  List<Object> get props => [password];
}

class LoginApi extends LoginEvents{}