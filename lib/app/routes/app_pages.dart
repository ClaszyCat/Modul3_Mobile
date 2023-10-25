import 'dart:developer';

import 'package:get/get.dart';
import 'package:public_api/app/modules/todos/views/todo_view.dart';
import 'package:public_api/app/modules/web_view/views/web_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WEB_VIEW,
      page: () => const WebView(),
    ),
    GetPage(
      name: _Paths.TODOS,
      page: () => const TodoView(),
    ),
  ];
}
