// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(icon: Icons.search_rounded,title: 'Notes',),
          const NotesListView(),
        ],
      ),
    );
  }
}
