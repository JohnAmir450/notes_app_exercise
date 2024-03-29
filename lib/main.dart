import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_exercise/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app_exercise/models/note_model.dart';
import 'package:notes_app_exercise/views/notes_view.dart';
import 'bloc_observer.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
 await Hive.openBox<NoteModel>(kNotesBox);
 Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Notes App',
          theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
          
          home: const NotesView(),
        ),
    );
  }
}

