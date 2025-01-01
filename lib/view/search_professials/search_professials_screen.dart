import 'package:flutter/material.dart';
import 'package:solution_sphere/view/home/widget/button_widget_home.dart';

class SearchProfessialsScreen extends StatefulWidget {
  const SearchProfessialsScreen({super.key});

  @override
  State<SearchProfessialsScreen> createState() =>
      _SearchProfessialsScreenState();
}

class _SearchProfessialsScreenState extends State<SearchProfessialsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Professials"),
      ),
      body: Column(
        children: [
          TextField()
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:solution_sphere/view_model/search_professial/search_bloc.dart';
// import 'package:solution_sphere/view_model/search_professial/search_event.dart';
// import 'package:solution_sphere/view_model/search_professial/search_state.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final items = [
//       'Apple',
//       'Banana',
//       'Cherry',
//       'Date',
//       'Fig',
//       'Grape',
//       'Honeydew'
//     ];

//     return MaterialApp(
//       home: BlocProvider(
//         create: (_) => SearchBloc(items),
//         child: SearchScreen(),
//       ),
//     );
//   }
// }

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final searchBloc = BlocProvider.of<SearchBloc>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search List'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               onChanged: (query) {
//                 searchBloc.add(SearchQueryChanged(query));
//               },
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Expanded(
//             child: BlocBuilder<SearchBloc, SearchStates>(
//               builder: (context, state) {
//                 if (state is SearchInitial) {
//                   return Center(child: Text('Type something to start searching.'));
//                 } else if (state is SearchLoading) {
//                   return Center(child: CircularProgressIndicator());
//                 } else if (state is SearchLoaded) {
//                   return ListView.builder(
//                     itemCount: state.results.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(state.results[index]),
//                       );
//                     },
//                   );
//                 } else if (state is SearchError) {
//                   return Center(child: Text(state.message));
//                 }
//                 return Container();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
