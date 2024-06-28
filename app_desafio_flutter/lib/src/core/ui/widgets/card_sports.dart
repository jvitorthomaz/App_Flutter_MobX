import 'package:flutter/material.dart';

class CardSports extends StatelessWidget {
  final String img;
  final String title;

  const CardSports({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(5),
      width: 114,
      height: 128,
      decoration: BoxDecoration(
        color: const Color.fromARGB(45, 196, 178, 58),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              img,
              height: 40,
              width: 40,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
