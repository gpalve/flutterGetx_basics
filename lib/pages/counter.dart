import 'package:first_getx_app/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});
  @override
  Widget build(BuildContext context) {
    // Removing the in-view dependency injection managing it through bindings
    // CounterController myController = Get.put(CounterController());
    return Column(
      children: [
        ElevatedButton(
          onPressed: () =>
              Get.find<CounterController>().increment(), // Use a callback
          child: const Text(
            "+",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Obx(() => Text(Get.find<CounterController>().counter.string,
            style: const TextStyle(fontSize: 20))),
        ElevatedButton(
          onPressed: () =>
              Get.find<CounterController>().decrement(), // Use a callback
          child: const Text(
            "-",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
