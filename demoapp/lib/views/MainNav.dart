import 'package:demoapp/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavController extends GetxController {}

class MainNavViewer extends GetView<MainNavController> {
  const MainNavViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFE1D89F), Color(0xFFE8DC81)],
      )),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            color: const Color(0xFFDCC26D),
            child: Center(
              child: SizedBox(
                height: 56.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                            "Prompting Playground",
                            style: Fonts.normalReturn(),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
