import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int curresntIndex;

  List<Color> colors = [
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff537D8D),
    const Color(0xff482C3D),
  ];

  @override
  void initState() {
    curresntIndex = colors.indexOf(Color(widget.notes.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            curresntIndex = index;
            // ignore: deprecated_member_use
            widget.notes.color = colors[index].value;
            setState(() {});
          },
          child: ColorItem(
            isActive: curresntIndex == index,
            color: colors[index],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 10.0),
      itemCount: colors.length,
    );
  }
}