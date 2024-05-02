import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Technology extends StatelessWidget {
  Technology({super.key});

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
              itemCount: cont.techn.length,
              itemBuilder:(context,index){
                ser.fetchtechnology();
                return Customcard(
                  title: cont.techn[index].title??"",
                  description:cont.techn[index].description??"",
                  urlToImage:cont.techn[index].urlToImage??"",
                  author:cont.techn[index].author??"",
                  //url:cont.techn[index].url??"",
                  publishedAt:cont.techn[index].publishedAt??"",
                  content:cont.techn[index].content??"",
                );

              } );
        }
      ),
    );

  }
}



