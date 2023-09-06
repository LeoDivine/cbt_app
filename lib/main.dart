import 'package:flutter/material.dart';
import 'pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CBT App',
      home: Scaffold(
        body: Welcome(),
      ),
    );
  }
}

//NOTE~Comment
// The main.dart contains the root widget of the CBT App
// it contains the Welcome() class which will run first if the app is ran.
// The debugShowCheckedModeBanner is set to false: it disables the banner that is at
// the top of the screen.
