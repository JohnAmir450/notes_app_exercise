import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 16),
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, right: 16, left: 16),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                ' Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Build your career with Tharawt Samy',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.5))),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Text(
              'May 21,2021',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            )
          ],
        ),
      ),
    );
  }
}
