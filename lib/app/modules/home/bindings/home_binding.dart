import 'package:get/get.dart';
import 'package:public_api/app/modules/todos/controllers/todo_controller.dart';
import 'package:public_api/app/modules/web_view/controllers/web_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(WebController());
    Get.put(TodoController());
  }
}
