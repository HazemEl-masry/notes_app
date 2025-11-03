import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 170, 114, 30),
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                "Flutter Tips sdadasd",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: const Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Stay focus in your way",
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            trailing: IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.black38,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Nov 3,2025',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
