import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../services/services.dart';

class Science extends StatelessWidget {
  Science({super.key});

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
              itemCount: cont.science.length,
              itemBuilder:(context,index){
                ser.fetchscience();
                return Customcard(
                  title: cont.science[index].title??"",
                  description: cont.science[index].description??"",
                  urlToImage:cont.science[index].urlToImage??"",
                  author:cont.science[index].author??"",
                  //url:cont.science[index].url??"",
                  publishedAt:cont.science[index].publishedAt??"",
                  content: cont.science[index].content??"",
                );
              } );
        }
      ),
    );

  }
}



