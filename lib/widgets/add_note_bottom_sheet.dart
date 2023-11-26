import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exercise/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_exercise/widgets/show_snack_bar.dart';
import 'add_note_form.dart';

class AddNoteButttomSheet extends StatefulWidget {
  const AddNoteButttomSheet({super.key});

  @override
  State<AddNoteButttomSheet> createState() => _AddNoteButttomSheetState();
}

class _AddNoteButttomSheetState extends State<AddNoteButttomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            snackBar(context,
                text: 'Note added successfuly', color: Colors.green);
          } else if (state is AddNoteFailure) {
            snackBar(context,
                color: Colors.red,
                text: 'Someting went wrong!, Please try againg later');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading? true:false,
            child: Padding(
              padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
