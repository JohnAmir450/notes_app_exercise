// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_exercise/constants.dart';
import 'package:notes_app_exercise/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
  var notesBox=Hive.box<NoteModel>(kNotesBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
