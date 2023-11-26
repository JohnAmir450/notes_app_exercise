import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_exercise/models/note_model.dart';
import 'package:notes_app_exercise/views/notes_view.dart';
import 'constants.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
 await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: MaterialApp(
          title: 'Notes App',
          theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
          
          home: const NotesView(),
        ),
    );
  }
}

