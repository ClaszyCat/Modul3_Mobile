import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:public_api/app/modules/web_view/views/web_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tampilan Awal Home View',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed('/webview');
                },
                child: const Text("Web Page")),
            TextButton(
              onPressed: () {
                Get.toNamed('/todos');
              },
              child: const Text("Todos"),
            )
          ],
        ),
      ),
    );
  }
}
