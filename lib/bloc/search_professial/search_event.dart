import 'package:equatable/equatable.dart';

abstract class SearchEvents extends Equatable {
  const SearchEvents();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class SearchQueryChanged extends SearchEvents {
  final String query;

  const SearchQueryChanged({required this.query});
  @override
  // TODO: implement props
  List<Object> get props => [query];
}
