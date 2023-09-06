import 'dart:ffi';

import 'package:flutter/material.dart';
import 'selection.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String name = "";

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //Added to stop the background image from moving up when the textfield is selected
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 893,
          padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/firstPage.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Hello, What's your name?",
                  style: TextStyle(
                    color: Color.fromRGBO(225, 225, 119, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    focusNode: _focusNode,
                    autofocus: true,
                    controller: _nameController,
                    style: const TextStyle(
                        color: Color.fromRGBO(225, 225, 119, 1),
                        fontSize: 17),
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(225, 225, 119, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(225, 225, 119, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  width: 140,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(225, 225, 119, 1),
                    ),
                    onPressed: () {
                      const snackBar = SnackBar(
                        content: Text(
                          "You left the field empty man!!",
                          style: TextStyle(
                              color: Color.fromRGBO(225, 225, 119, 1)),
                        ),
                      );
                      setState(
                        () {
                          name = _nameController.text;
                        },
                      );
                      if (name == "") {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Selection(name: name),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//NOTE~Comment
//The welcome page is the first page of the CBT App. It contains the section
// that asks the users to input their name. The name is saved in a variable called
// name with type String. The Textfield is handled by a TextEditingController which
// gets the value of the name variable. If the user did not input a anything in the textfield
// the app sends a snackbar prompting the user to input a name.
// Once the user inputs a value it navigates to the selection.dart page.
// The _focusNode object with type FocusNode is used to handle the keyboard focus
// when the user runs the app, it sets the Textfield to autofocus 
