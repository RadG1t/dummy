import 'package:flutter/material.dart';
import 'dart:math';

var min = 25;
var maxx = 320;
var maxy = 720;
double x = 220;
double y = 425;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellowAccent.shade400,
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 250,
                      ),
                      const Text('are you a dumb ?',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 28,
                              fontStyle: FontStyle.italic)),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 110,
                          ),
                          ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondPage()),
                              );
                              setState(() {});
                            },
                            child: const Text(
                              'Yes',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                        ],
                      )
                    ]),
                Positioned(
                  bottom: y,
                  left: x,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      Random random = Random();
                      Random random2 = Random();
                      x = min + random.nextDouble() * 250;
                      y = min + random2.nextDouble() * 350;
                      /* print("y is : $y");
                      print("x is : $x"); */
                      setState(() {});
                    },
                    child: const Text('No',
                        style: TextStyle(color: Colors.yellow, fontSize: 18)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'I knew it :) !',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
