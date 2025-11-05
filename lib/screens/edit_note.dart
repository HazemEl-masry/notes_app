import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_field.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

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
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50.0),
              CustomField(
                hintText: "Title",
                maxLines: 1,
                onSaved: (data) {},
              ),
              const SizedBox(height: 20.0),
              CustomField(
                hintText: "Content",
                maxLines: 10,
                onSaved: (data) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}