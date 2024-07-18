import 'package:flutter/material.dart';

class CardChampionship extends StatelessWidget {
  final String img;
  
  const CardChampionship({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(45, 196, 178, 58),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: ClipOval(
          child: Image.network(
              img,
              height: 50,
              width: 45,
              fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
}
