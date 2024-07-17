import 'package:flutter/material.dart';

class BetFieldWidget extends StatelessWidget {
  final String title;
  final String img;
  final String value;
  final double widthImg;
  final double heightImg;

  const BetFieldWidget({
    super.key,
    required this.title,
    required this.img,
    required this.value,
    required this.widthImg,
    required this.heightImg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Image(
            height: heightImg,
            width: widthImg,
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          Text(value),
        ],
      ),
    );
  }
}
