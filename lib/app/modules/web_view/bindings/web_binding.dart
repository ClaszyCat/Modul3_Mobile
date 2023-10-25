import 'package:get/get.dart';
import 'package:public_api/app/modules/web_view/controllers/web_controller.dart';

class WebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebController>(
      () => WebController(),
    );
    Get.put(WebController());
  }
}
