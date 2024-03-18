import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NewPage")),
      body: Container(
        child: const Text("Hello New Page"),
      ),
    );
  }
}
