import 'package:equatable/equatable.dart';

abstract class SignupEvents extends Equatable {
  const SignupEvents();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NameChanged extends SignupEvents {
  final String name;
  const NameChanged({required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [name];
}

class EmailChanged extends SignupEvents {
  final String email;
  const EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class PasswordChanged extends SignupEvents {
  final String password;

  const PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class ConfirmPasswordChanged extends SignupEvents {
  final String confirmPassword;

  const ConfirmPasswordChanged({required this.confirmPassword});

  @override
  // TODO: implement props
  List<Object?> get props => [confirmPassword];
}

class PhoneNumberChanged extends SignupEvents{
  final String phoneNumber;

  const PhoneNumberChanged({required this.phoneNumber});

  @override
  // TODO: implement props
  List<Object?> get props => [phoneNumber];
}



class SignupApi extends SignupEvents {}
