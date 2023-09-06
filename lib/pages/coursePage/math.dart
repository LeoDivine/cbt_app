import 'package:flutter/material.dart';

class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Mathematics",
      )),
    );
  }
}
