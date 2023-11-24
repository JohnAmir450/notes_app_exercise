// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
       CustomAppBar(),
        NoteItem()
      ],
    ));
  }
}

