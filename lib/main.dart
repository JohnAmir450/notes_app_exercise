import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_exercise/views/notes_view.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      
      home: const NotesView(),
    );
  }
}

