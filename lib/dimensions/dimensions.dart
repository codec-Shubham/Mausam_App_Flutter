// Getx package mainly used for routing and state management

import 'package:get/get.dart';
class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;


  static double height180  = screenHeight/4.4;            //797
  static double height250  = screenHeight/3.188;            //797
  static double height195  = screenHeight/4.0871;            //797


  static double width180  = screenWidth/2.2;

  //spalsh Screen size
  //static double spalshImg = screenHeight/3.18;

  //TODO try to make dimensions dynamic if have time so that app become more responsive



}