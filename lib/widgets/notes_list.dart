import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const NoteItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 20.0),
        itemCount: 20,
      ),
    );
  }
}
