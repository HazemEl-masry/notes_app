import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        bottom: 35.0,
        left: 16.0,
        right: 16.0,
      ),
      child: Column(
        children: [
          CustomField(hintText: "Title", maxLines: 1, onChanged: (data) {}),
          const SizedBox(height: 20.0),
          CustomField(hintText: "Content", maxLines: 10, onChanged: (data) {}),
          const Spacer(),
          CustomButton(
            text: "Add Note",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
