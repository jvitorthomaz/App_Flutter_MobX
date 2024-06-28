import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/ui/constants.dart';
import 'package:app_desafio_flutter/src/core/ui/widgets/loading_widget.dart';
import 'package:app_desafio_flutter/src/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final homeController = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
            backgroundColor: AppColors.colorWhite,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: AppColors.colorWhite,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: AppColors.colorWhite,
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: AppColors.colorBlack,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.help_outline_outlined,
                                color: AppColors.colorBlack,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Ajuda e Suporte',
                                style: TextStyle(color: AppColors.colorBlack),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                    size: 20,
                  ),
                  title: const Text("Início"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                    height: 20,
                    width: 20,
                    image: AssetImage('assets/images/whistle.png'),
                    fit: BoxFit.cover
                  ),
                  title: const Text("Esportes"),
                  onTap: () async {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) => const LoadingWidget(),
                    );
                    // if (await homeController.coreController.setListSports()) {
                    //   Navigator.of(context).pop();
                    //   Navigator.pushNamed(context, '/sports');
                    // }
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.bookmark_border_rounded,
                    size: 17,
                  ),
                  title: const Text("Notícias e Dicas"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                    height: 17,
                    width: 17,
                    image: AssetImage('assets/images/star.png'),
                    fit: BoxFit.cover
                  ),
                  title: const Text("Favoritos"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                    height: 15,
                    width: 17,
                    image: AssetImage('assets/images/user.png'),
                    fit: BoxFit.cover
                  ),
                  title: const Text("Influenciadores"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.access_time_rounded,
                    size: 17,
                  ),
                  title: const Text("Comparador de odds"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                    height: 13,
                    width: 16,
                    image: AssetImage('assets/images/ticket.png'),
                    fit: BoxFit.cover
                  ),
                  title: const Text("Jogo consciente"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                    height: 17,
                    width: 15,
                    image: AssetImage('assets/images/security.png'),
                    fit: BoxFit.cover
                  ),
                  title: const Text("Privacidade e segurança"),
                  onTap: () {},
                ),
              ],
            ),
          );
  }
}