import 'package:database/screen/database/view/database_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main()
{

  runApp(
     GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => DataBaseScreen(),)
      ],
    ),
  );


}