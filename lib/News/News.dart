import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../componans/List.dart';
import '../componans/custom.dart';
import '../controller/controller_news.dart';
import '../model/newsmodel.dart';
import '../screens/business.dart';
import '../screens/entertainment.dart';
import '../services/services.dart';

class News extends StatelessWidget{
  const News({super.key});


  @override
  Widget build(BuildContext context) {
    final ser =Services_new();
    final cont =Get.put(ControllerNew());

    return DefaultTabController(
        length: tabs.length,
    child : Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8B008B),
        title: Text("News"),
        bottom: TabBar(
          tabs: tabs,

        ),
      ),
      body:
         // TextButton(onPressed: () {ser.fetchNews();  }, child: const Text("data"),),
          TabBarView(children:tabview),

    ),
    );
  }

}