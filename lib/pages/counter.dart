import 'package:first_getx_app/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});
  @override
  Widget build(BuildContext context) {
    AppController myController = Get.put(AppController());
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => myController.increment(), // Use a callback
          child: const Text(
            "+",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Obx(() => Text(myController.counter.string,
            style: const TextStyle(fontSize: 20))),
        ElevatedButton(
          onPressed: () => myController.decrement(), // Use a callback
          child: const Text(
            "-",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
