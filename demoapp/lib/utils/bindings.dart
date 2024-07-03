import 'package:demoapp/controllers/HomePage.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {

  @override
  void dependencies() {
    // Here are where all the controllers will be put
    Get.put(HomePageController());
  }
}