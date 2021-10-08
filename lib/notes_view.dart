import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_notes/notes_cubit.dart';
import 'package:bloc_notes/note.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Заметки')
      ),
      body: BlocBuilder<NotesCubit, List<Note>>(
          builder: (context, notes) {
            if (notes.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(notes[index].note)
                ),
              );
            } );
          }

      ),
    );
  }
}
