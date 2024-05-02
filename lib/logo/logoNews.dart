import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'logoController.dart';

class LogoNews extends StatelessWidget{
  LogoNews({super.key});

  @override
  Widget build(BuildContext context) {
    final controler =Get.put(Logocontroller());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network("https://i.pinimg.com/originals/4e/a9/81/4ea98108e0dd10a1dc417a24e32232e2.png",height: 700,width: 500,),


          ],
        ),
      ),
    );

  }

}