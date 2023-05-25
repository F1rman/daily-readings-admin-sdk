import 'package:daily_readings_admin_sdk/controllers/global_controller.dart';
import 'package:daily_readings_admin_sdk/screens/dashboard/dashboard_screen.dart';
import 'package:daily_readings_admin_sdk/screens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);
  GlobalController globalController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalController.scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
