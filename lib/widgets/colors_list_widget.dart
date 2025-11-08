import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListWidget extends StatelessWidget {
  const ColorsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ColorItem(),
      separatorBuilder: (context, index) => const SizedBox(width: 10.0),
      itemCount: 6
    );
  }
}