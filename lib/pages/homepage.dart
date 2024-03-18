import 'package:first_getx_app/pages/counter.dart';
import 'package:first_getx_app/pages/newpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key); // Removed const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homepage")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Get.snackbar("Hello There",
                    "This is your snackbar body"), // Use a callback
                child: const Text("Snack Bar"),
              ),
              ElevatedButton(
                onPressed: () => Get.defaultDialog(
                    title: "Hello",
                    content: const Text("children")), // Use a callback
                child: const Text("Alert Dialog"),
              ),
              ElevatedButton(
                onPressed: () => Get.to(NewPage()), // Use a callback
                child: const Text("Go to New Page"),
              ),
              const Counter(),
            ],
          ),
        ),
      ),
    );
  }
}
