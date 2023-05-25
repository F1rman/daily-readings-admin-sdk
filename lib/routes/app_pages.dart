import 'package:daily_readings_admin_sdk/screens/home/home.dart';
import 'package:daily_readings_admin_sdk/screens/login.dart';
import 'package:daily_readings_admin_sdk/screens/users/users_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginScreen(
              errMsg: '',
            )),
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(
              errMsg: '',
            )),
    GetPage(
        name: Routes.USERS,
        page: () => const UsersScreen(
              errMsg: '',
            )),
  ];
}
