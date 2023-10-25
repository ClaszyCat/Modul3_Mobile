import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:public_api/app/data/models/todos.dart';
import 'package:public_api/app/modules/todos/controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Todo'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Todos>(
          future: controller.fetchTodos(),
          builder: (context, snapshot) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User ID: ${snapshot.data!.userId}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ID: ${snapshot.data!.id}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Title: ${snapshot.data!.title}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Completed: ${snapshot.data!.completed}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}
