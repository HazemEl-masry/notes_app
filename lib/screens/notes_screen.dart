import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesBody(),
    );
  }
}