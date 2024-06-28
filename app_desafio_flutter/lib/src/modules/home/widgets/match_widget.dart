
import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Acompanhe todas as partidas',
                style: TextStyle(
                    color: Color(0xFF505854),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xFFF5D70A)),
                ),
                child: const Image(
                  height: 16,
                  width: 21,
                  image: AssetImage('assets/images/arrow_right.png'),
                  fit: BoxFit.cover
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
