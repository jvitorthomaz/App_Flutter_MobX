import 'package:flutter/material.dart';

class TeamInfoWidget extends StatelessWidget {
  final String img;
  final String name;

  const TeamInfoWidget({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(child: Image.network(img, height: 60, width: 62, fit: BoxFit.cover)),
          Text(name)
        ],
      ),
    );
  }
}
