import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/13,
      decoration: BoxDecoration(
          color: kPrimayColor,
          borderRadius: BorderRadius.circular(18)),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),
      )),
    );
  }
}