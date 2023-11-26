import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        CustomAppBar(
          icon: Icons.done,
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Edit Note',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 16),
          child: CustomTextField(hint: 'Title'),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(hint: 'Content',maxLines: 5,),
        )
      ],
    );
  }
}
