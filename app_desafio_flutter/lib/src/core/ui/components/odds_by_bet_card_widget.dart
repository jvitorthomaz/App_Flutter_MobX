import 'package:flutter/material.dart';

class OddsByBetCardWidget extends StatelessWidget {
  final String betIMG;
  const OddsByBetCardWidget({super.key, required this.betIMG});

  @override
  Widget build(BuildContext context) {
      return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 30, left: 15, right: 15),
      padding: EdgeInsets.only(top: 20,bottom: 10),
      height: 320,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(192, 196, 194, 1),

        borderRadius: BorderRadius.circular(25.0),

      ),
      child: const SizedBox(
        width: 280,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
               
                
              ],
            ),
            Row(children: [],),
            Row(children: [],),
            Row(children: [],)
          ],
        ),
      ),
    );
  }
}