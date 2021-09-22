import 'package:flutter/material.dart';
import 'package:get/get.dart';

//StatelessWidget : não contem estado, sendo estatica
//StatefulWidget : Ele tem um estado que pode ser alterado
class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // inicia a pagina
    super.initState();
    //a função só sera executada após o build ser contruído ao usar:
    //WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {});
  }

  @override
  void dispose() {
    //quando sai da pagina
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //2
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
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
