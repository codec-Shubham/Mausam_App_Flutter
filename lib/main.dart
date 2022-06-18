import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Activity/home.dart';
import 'Activity/loading.dart';



void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => Home(),
      "/loading" : (context) => Loading(),
    },
  ));
}
