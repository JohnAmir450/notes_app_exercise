import 'package:flutter/material.dart';

void snackBar(BuildContext context,{required  text,required  color}) {
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:
            Text(text),backgroundColor: color,
      ),
      
    );
  }

