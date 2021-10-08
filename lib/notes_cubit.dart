import 'package:bloc_notes/note.dart';
import 'package:bloc_notes/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesCubit extends Cubit<List<Note>> {
  final _apiService = ApiService();

  NotesCubit() : super([]);

  void getNotes() async => emit(await _apiService.getNotes());
}
