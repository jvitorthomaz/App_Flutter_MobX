import 'package:flutter/material.dart';

class TabItemWidget extends StatelessWidget {
  final String img;
  final String title;

  const TabItemWidget({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
            height: 20,
            width: 20,
            image: AssetImage(img),
            fit: BoxFit.cover
        ),
        const SizedBox(
          width: 5,
        ),
        Text(title),
      ],
    );
  }
}
