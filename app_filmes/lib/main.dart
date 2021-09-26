import 'package:app_filmes/application/ui/filmes_app_ui_config.dart';
import 'package:app_filmes/modules/home/home_module.dart';
import 'package:app_filmes/modules/login/login_module.dart';
import 'package:app_filmes/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

import 'application/bidings/application_bifings.dart';

Future<void> main() async {
  //inicia o flutter antes de qualquer aplicação para evitar problema no firebase
  WidgetsFlutterBinding.ensureInitialized();
  //espera o Firebase carregar primeiro
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.title,
      initialBinding: ApplicationBidings(),
      theme: FilmesAppUiConfig.theme,
      getPages: [
        //...destroi os itens e coloca nesse array
        //da suporte aos modulos
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers
      ],
    );
  }
}
