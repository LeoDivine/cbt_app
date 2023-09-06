import 'package:flutter/material.dart';
import 'welcome.dart';
import 'coursePage/math.dart';
import 'coursePage/english.dart';
import 'coursePage/physics.dart';
import 'coursePage/chemistry.dart';

class Selection extends StatefulWidget {
  final String name;
  const Selection({Key? key, required this.name}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    final currentTime = DateTime.now();
    final currentHour = currentTime.hour;

    setState(() {
      if (currentHour >= 5 && currentHour < 12) {
        _greeting = 'Good Morning';
      } else if (currentHour >= 12 && currentHour < 17) {
        _greeting = 'Good Afternoon';
      } else if (currentHour >= 17 && currentHour < 21) {
        _greeting = 'Good Evening';
      } else {
        _greeting = 'Good Night';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 100,
            left: 25,
            right: 25,
          ),
          width: double.infinity,
          height: 930,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/selectionPage.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, ${widget.name}!!",
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _greeting,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Pick a Subject",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 225, 119, 1),
                              fixedSize: const Size(400, 70),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Math(),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.functions,
                                  color: Color.fromRGBO(37, 28, 93, 1),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Mathematics",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 40,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 225, 119, 1),
                              fixedSize: const Size(400, 70),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const English(),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.edit_document,
                                  color: Color.fromRGBO(37, 28, 93, 1),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "English Language",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 86,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 40,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 225, 119, 1),
                              fixedSize: const Size(400, 70),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Physics(),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.twenty_four_mp,
                                  color: Color.fromRGBO(37, 28, 93, 1),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Physics",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 179,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 40,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 225, 119, 1),
                              fixedSize: const Size(400, 70),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Chemistry(),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Color.fromRGBO(37, 28, 93, 1),
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 154,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 40,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
