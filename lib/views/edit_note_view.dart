import 'package:flutter/material.dart';
import '../widgets/edit_notes_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(),
      ),
    );
  }
}

