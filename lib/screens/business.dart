
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Business extends StatelessWidget {
   Business({super.key});

  final ser =Services_new();
  final cont =Get.put(ControllerNew());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<ControllerNew>(
        builder: (controller) {
         return ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount:cont.list.length,
              itemBuilder:(context,index){
                ser.fetchbusiness();
                return Customcard(
                  title: cont.list[index].title ??"",
                  description: cont.list[index].description??"",
                  urlToImage: cont.list[index].urlToImage??"",
                  author: cont.list[index].author??"",
                  //url:cont.list[index].description??"",
                  publishedAt: cont.list[index].description??"",
                  content: cont.list[index].description??"",

                );

              } );
        }
      )

    );

  }
}



