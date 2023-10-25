import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:public_api/app/modules/web_view/controllers/web_controller.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends GetView<WebController> {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Github'),
      ),
      body:
          // Container()
          WebViewWidget(controller: controller.controller),
    );
  }
}
