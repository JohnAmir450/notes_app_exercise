import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({
    super.key, required this.title, required this.icon,this.onPressed
  });
final String title;
final IconData icon;
void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          CustomIcon(icon: icon,onPressed: onPressed,)
        ],
      ),
    );
  }
}
