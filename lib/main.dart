import 'package:flutter/material.dart';
import 'package:bloc_notes/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_notes/notes_cubit.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<NotesCubit>(
            create: (context) => NotesCubit()..getNotes(), child: NotesView()));
  }
}