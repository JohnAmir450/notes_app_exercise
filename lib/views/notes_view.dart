import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exercise/cubits/notes_cubit/cubit/notes_cubit.dart';
import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return const AddNoteButttomSheet();
                    });
              },
              child: const Icon(Icons.add),
            ),
            body: const NotesViewBody()),
      ),
    );
  }
}
