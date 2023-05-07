import 'package:animation_project/screen/planet/view/detail.dart';
import 'package:animation_project/screen/planet/view/planet_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => PlanetScreen(),
        ),
        GetPage(
          name: '/detail',
          page: () => Details(),
        ),
      ],
    ),
  );
}
