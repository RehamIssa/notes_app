
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    //Don't give the conatiner any fixed height
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: const Text('Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                )),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: const Text(
                'You can reach your goals by daily practice',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              top: 16,
            ),
            child: const Text(
              'Augst7, 2025',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
