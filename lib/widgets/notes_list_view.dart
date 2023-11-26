import 'package:flutter/material.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => const NoteItem()));
  }
}