import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final RxBool isDrawerOpen = false.obs;
  void openDrawer() {
    isDrawerOpen.value = true;
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    isDrawerOpen.value = false;
    Get.back();
  }
}
