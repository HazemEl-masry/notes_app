import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});

  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNote(notes: notes,)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 170, 114, 30),
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(18.0),
        ),
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  notes.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                notes.contant,
                style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              trailing: IconButton(
                iconSize: 40,
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(Icons.delete),
                color: Colors.black38,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                notes.date,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
