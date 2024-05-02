import 'package:get/get.dart';

import '../model/newsmodel.dart';
import '../services/services.dart';

class ControllerNew extends GetxController{

 final list =<Articles>[].obs;
  Services_new aui =Services_new();

  fetchbus ()async{
    list.value= (await aui.fetchbusiness())!;
  }
 final enter =<Articles>[].obs;
 fetchenter ()async {
  enter.value = (await aui.fetchentertainment())!;
 }
 final general =<Articles>[].obs;
 fetchgeneral ()async {
  general.value = (await aui.fetchgeneral())!;
 }
 final health =<Articles>[].obs;
 fetchhealth ()async {
  health.value = (await aui.fetchhealth())!;
 }
 final science =<Articles>[].obs;
 fetcscin ()async {
  science.value = (await aui.fetchscience())!;
 }
 final sport =<Articles>[].obs;
 fetchsport ()async {
  sport.value = (await aui.fetchsport())!;
 }
 final techn =<Articles>[].obs;
 fetchtechn ()async {
  techn.value = (await aui.fetchtechnology())!;
 }
  @override
   onInit()async {
    super.onInit();
   await fetchbus();
   await fetchenter();
   await fetchgeneral();
   await fetchhealth();
   await fetcscin();
   await fetchsport();
   await fetchtechn();
  }

}