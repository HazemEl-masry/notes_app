import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_widget.dart';
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
          const SizedBox(height: 30.0),
          CustomField(
            hintText: "Content",
            maxLines: 10,
            onSaved: (data) {
              subTitle = data;
            },
          ),
          const SizedBox(height: 20,),
          const SizedBox(
            height: 60,
            child: ColorsListWidget(),
          ),
          const SizedBox(height: 20,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: "Add Note",
                onTap: () {
                  var currentDate = DateTime.now();
                  var formatedDate = DateFormat.yMMMd().format(currentDate);
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var addNoteModel = NoteModel(
                      title: title!,
                      contant: subTitle!,
                      date: formatedDate.toString(),
                      // ignore: deprecated_member_use
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(
                      context,
                    ).addNote(addNoteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }
}
