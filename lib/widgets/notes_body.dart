import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_list.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            // scrollControlDisabledMaxHeightRatio: 0.7,
            showDragHandle: true,
            context: context, builder: (context) {
            return const CustomBottomSheet();
          },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomAppBar(
                title: "Notes",
                icon: Icons.search,
                onPressed: () {},
              ),
              const SizedBox(height: 30.0,),
              const NotesList(),
            ],
          ),
        ),
      ),
    );
  }
}