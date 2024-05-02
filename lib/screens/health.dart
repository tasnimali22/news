import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Health extends StatelessWidget {
  Health({super.key});

  final ser =Services_new();
  final cont =Get.put(ControllerNew());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ControllerNew>(
        builder: (controller){
          return ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cont.health.length,
              itemBuilder:(context,index){
                ser.fetchhealth();
                return Customcard(
                  title: cont.health[index].title??"",
                  description: cont.health[index].description??"",
                  urlToImage: cont.health[index].urlToImage??"",
                  author:cont.health[index].author??"",
                  //url: cont.health[index].url??"",
                  publishedAt:cont.health[index].publishedAt??"",
                  content:cont.health[index].content??"",
                );
              } );
        }
      ),
    );

  }
}



