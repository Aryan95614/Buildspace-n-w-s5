import 'package:demoapp/controllers/constantsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controllers
import '../controllers/constantsController.dart';

// Directly ran afterwards
ConstantsController constantsController = Get.find();

class SideDrawerWidget extends StatelessWidget {
  const SideDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}