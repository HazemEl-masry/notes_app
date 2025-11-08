import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListWidget extends StatefulWidget {
  const ColorsListWidget({super.key});

  @override
  State<ColorsListWidget> createState() => _ColorsListWidgetState();
}

class _ColorsListWidgetState extends State<ColorsListWidget> {
  int curresntIndex = 0;
  List<Color> colors = [
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff537D8D),
    const Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            curresntIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
