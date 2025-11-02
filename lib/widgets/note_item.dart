import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 16, 140, 189),
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("Flutter Tips"),
            titleTextStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            subtitle: const Text("Stay focus in your way"),
            subtitleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            trailing: IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text('2025/11/02',style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white
           ),
          ),
        ],
      ),
    );
  }
}
