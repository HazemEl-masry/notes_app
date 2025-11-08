import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title,contant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomAppBar(
                title: "Edit Notes",
                icon: Icons.check,
                onPressed: () {
                  widget.notes.title = title ?? widget.notes.title;
                  widget.notes.contant = contant ?? widget.notes.contant;
                  widget.notes.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50.0),
              CustomField(
                hintText: widget.notes.title,
                maxLines: 1,
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 20.0),
              CustomField(
                hintText: widget.notes.contant,
                maxLines: 10,
                onChanged: (value) {
                  contant =value;
                },
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 60,
                child: EditNoteColorsList(
                  notes: widget.notes,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}