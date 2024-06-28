import 'package:app_desafio_flutter/routes.dart';
import 'package:app_desafio_flutter/setup_getIt.dart';
import 'package:app_desafio_flutter/src/core/app_theme.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Império',
        routes: getIt<Routes>().routes,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData
    );  
  }
}
