import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {}

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8DC81),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xDDE3D16A),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Content"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
