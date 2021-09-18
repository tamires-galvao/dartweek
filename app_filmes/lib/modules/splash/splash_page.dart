import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            //pegando o tamanho total da tela
            //width: MediaQuery.of(context).size.width, ou
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                //imagem do fundo
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: Image.asset('assets/images/logo.png')
            //child: Text(RemoteConfig.instance.getString('api_token')),
            ),
      ),
    );
  }
}
