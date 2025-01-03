import 'package:equatable/equatable.dart';

abstract class SearchStates extends Equatable {
  const SearchStates();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SearchInitial extends SearchStates {}

class SearchLoading extends SearchStates {}

class SearchLoaded extends SearchStates {
  final List<String> roleList;

  const SearchLoaded({required this.roleList});

  @override
  // TODO: implement props
  List<Object?> get props => [roleList];
}

class SearchError extends SearchStates {
  final String message;

  SearchError(this.message);
  List<Object?> get props => [message];
}
