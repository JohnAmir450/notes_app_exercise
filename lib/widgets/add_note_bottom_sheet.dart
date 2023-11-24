import 'package:flutter/material.dart';
import 'package:notes_app_exercise/constants.dart';

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
            const SizedBox(
              height: 40,
            ),
           const CustomBottom()
          ],
        ),
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/5,
      decoration: BoxDecoration(
          color: kPrimayColor,
          borderRadius: BorderRadius.circular(18)),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
      )),
    );
  }
}