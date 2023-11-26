import 'package:flutter/material.dart';
import 'package:notes_app_exercise/constants.dart';

import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteButttomSheet extends StatelessWidget {
  const AddNoteButttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
             const SizedBox(height: 40,),
           const CustomBottom(),
           const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}


