import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:public_api/app/data/models/todos.dart';

class TodoController extends GetxController {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com/todos/5';

  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchTodos();
  }

  Future<Todos> fetchTodos() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
