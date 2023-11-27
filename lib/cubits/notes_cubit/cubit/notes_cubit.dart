// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_exercise/constants.dart';

import '../../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List<NoteModel>?notes;
  fetchAllNotes(){
   
     var noteBox=Hive.box<NoteModel>(kNotesBox);
    notes=noteBox.values.toList();
   emit(NotesSuccess());
}
}