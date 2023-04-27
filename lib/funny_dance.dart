import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class FunnyDance extends StatelessWidget {
  const FunnyDance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crystal's fun emoji!"),
      ),
      body: ListView(
        children: [
            Lottie.network('https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/C.json'),
        ],
      ),
    );
  }

}