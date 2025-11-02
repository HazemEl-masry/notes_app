import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Notes",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.7),
            color: const Color.fromARGB(174, 114, 126, 171),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset.infinite,
              )
            ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30,
          ),
        ),
      ],
    );
  }
}