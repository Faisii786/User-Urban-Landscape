import 'package:fix_my_ride/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fix My Ride',
      home: BottomNavBar(),
    );
  }
}
