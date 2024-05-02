import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class General extends StatelessWidget {
  General({super.key});

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
              itemCount: cont.general.length,
              itemBuilder:(context,index){
                ser.fetchgeneral();
                return Customcard(
                  title: cont.general[index].title??"",
                  description: cont.general[index].description??"",
                  urlToImage: cont.general[index].urlToImage??"",
                  author:cont.general[index].author??"",
                  //url:cont.general[index].url??"",
                  publishedAt:cont.general[index].publishedAt??"",
                  content:cont.general[index].content??"",
                );

              } );
        }
      ),
    );

  }
}



