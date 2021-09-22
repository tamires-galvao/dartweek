import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //empilha widget, podendo criar a estrutura das imagens
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            //para decidir o nivel da opacidade:
            //color: Colors.black.withOpacity(0.7),
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  //ocupa 90% da tela
                  width: Get.width * .9,
                  height: 42,
                  child: SignInButton(
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onPressed: () {},
                    text: 'Entrar com o Google',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
