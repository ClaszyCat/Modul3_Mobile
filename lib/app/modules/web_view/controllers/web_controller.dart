import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    controller;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..loadRequest(Uri.parse('https://github.com/ClaszyCat'));
  // ganti url di atas menjadi url website yang ingin kalian tampilkan
}
