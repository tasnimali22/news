import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Sport extends StatelessWidget {
  Sport({super.key});

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
              itemCount: cont.sport.length,
              itemBuilder:(context,index){
                ser.fetchsport();
                return Customcard(
                  title:cont.sport[index].title??"",
                  description:cont.sport[index].description??"",
                  urlToImage:cont.sport[index].urlToImage??"",
                  author:cont.sport[index].author??"",
                  //url:cont.sport[index].url??"",
                  publishedAt:cont.sport[index].publishedAt??"",
                  content:cont.sport[index].content??"",
                );
              } );
        }
      ),
    );

  }
}



