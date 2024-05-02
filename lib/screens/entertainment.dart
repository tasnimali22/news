import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Entertainment extends StatelessWidget {
  Entertainment({super.key});

  final ser =Services_new();
  final cont =Get.put(ControllerNew());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ControllerNew>(
        builder: (controller) {
          return ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cont.enter.length,
              itemBuilder:(context,index){
                ser.fetchentertainment();
                return Customcard(
                  title: cont.enter[index].title??"",
                  description:cont.enter[index].description??"",
                  urlToImage:cont.enter[index].urlToImage??"",
                  author: cont.enter[index].author??"",
                  //url: cont.enter[index].url??"",
                  publishedAt:cont.enter[index].publishedAt??"",
                  content:cont.enter[index].content??"",
                );

              } );
        },),
    );

  }
}



