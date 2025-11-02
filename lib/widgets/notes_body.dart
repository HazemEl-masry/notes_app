import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomAppBar()
            ],
          ),
        ),
      ),
    );
  }
}