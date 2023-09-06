import 'package:flutter/material.dart';

class Chemistry extends StatefulWidget {
  const Chemistry({super.key});

  @override
  State<Chemistry> createState() => _ChemistryState();
}

class _ChemistryState extends State<Chemistry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Chemistry",
      )),
    );
  }
}
