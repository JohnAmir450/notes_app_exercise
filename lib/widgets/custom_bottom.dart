import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    this.onTap,this.isLoading=false
  });
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
            color: kPrimayColor, borderRadius: BorderRadius.circular(18)),
        child: isLoading
            ? circularProgressIndicator()
            : customAddNoteBottomText(),
      ),
    );
  }

  Center customAddNoteBottomText() {
    return const Center(
      child:  Text(
                'Add',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
    );
  }

  Center circularProgressIndicator() {
    return const Center(
              child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  )));
  }
}
