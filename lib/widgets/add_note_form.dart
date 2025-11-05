import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomField(
            hintText: "Title",
            maxLines: 1,
            onSaved: (data) {
              title = data;
            },
          ),
          const SizedBox(height: 20.0),
          CustomField(
            hintText: "Content",
            maxLines: 10,
            onSaved: (data) {
              subTitle = data;
            },
          ),
          const Spacer(),
          CustomButton(
            text: "Add Note",
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
    ;
  }
}
