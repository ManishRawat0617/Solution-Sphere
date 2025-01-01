// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:solution_sphere/view_model/search_professial/search_event.dart';
// import 'package:solution_sphere/view_model/search_professial/search_state.dart';

// class SearchBloc extends Bloc<SearchEvents, SearchStates> {
//   final List<String> items;
//   SearchBloc(this.items) : super(SearchInitial()) {
//     on<SearchQueryChanged>(_onSearchQueryChanged);
//   }

//   void _onSearchQueryChanged(SearchEvents event, Emitter<SearchStates> emit) {
//     emit(SearchLoading());

//     try {
//       final query = event.query.toLowerCase();
//       final results =
//           items.where((item) => item.toLowerCase().contains(query)).toList();
//       emit(SearchLoaded(results));
//     } catch (e) {
//       emit(SearchError("An error occurred while searching"));
//     }
//   }
// }
