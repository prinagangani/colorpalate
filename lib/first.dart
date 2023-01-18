import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List col = [
    Colors.teal,
    Colors.white24,
    Colors.teal.shade900,
    Colors.orange.shade300,
    Colors.yellow.shade300,
    Colors.redAccent.shade400,
    Colors.grey.shade700,
    Colors.teal.shade500,
    Colors.white,
  ];

  int color1 = 0;
  int color2 = 1;
  int color3 = 2;
  int color4 = 4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.withOpacity(0.25),
          title: Text("Color palette", style: TextStyle(fontSize: 25)),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade400,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: col[color1],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: col[color2],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: col[color3],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: col[color4],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    var rnd1 = Random();
                    var rnd2 = Random();
                    var rnd3 = Random();
                    var rnd4 = Random();
                    setState(() {
                      color1 = rnd1.nextInt(9);
                      color2 = rnd2.nextInt(9);
                      color3 = rnd3.nextInt(9);
                      color4 = rnd4.nextInt(9);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        width: 150,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(10),
                          border:
                          Border.all(color: Colors.teal.shade700, width: 2),
                        ),
                        child: Text(
                          "Generate",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        alignment: Alignment.center),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
