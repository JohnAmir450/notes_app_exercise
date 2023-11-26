import 'package:flutter/material.dart';
import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteButttomSheet extends StatelessWidget {
  const AddNoteButttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
 String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onsaved: (value){
              title=value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onsaved: (value){
              subTitle=value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
           const SizedBox(height: 40,),
          CustomBottom(onTap: (){
              if(formKey.currentState!.validate())
              {
                  formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
         },),
         const SizedBox(height: 20,)
        ],
      ),
    );
  }
}


