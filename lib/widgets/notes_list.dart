import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => const NoteItem(),
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemCount: state is NotesSuccess ? state.notes.length : 0,
        );
      },
    );
  }
}
