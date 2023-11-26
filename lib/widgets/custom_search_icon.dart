import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
   CustomIcon({
    super.key, required this.icon,this.onPressed
  });
final IconData icon;
void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(18)),
        child: IconButton(
          icon:  Icon(
           icon,
            size: 25,
          ),
          onPressed: onPressed,
        ));
  }
}