import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              snackBar(context, color: Colors.red, text: 'Someting went wrong!, Please try againg later');
            }
            else if(state is AddNoteSuccess){
              snackBar(context, text: 'Note added successfuly', color: Colors.green);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }

}