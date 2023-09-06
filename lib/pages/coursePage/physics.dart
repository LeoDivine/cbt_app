import 'package:flutter/material.dart';

class Physics extends StatefulWidget {
  const Physics({super.key});

  @override
  State<Physics> createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Physics",
      )),
    );
  }
}
