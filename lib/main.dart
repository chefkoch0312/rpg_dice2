import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayedInformation = "Startinformation";

  int _generateRandomNumber(int maxValue) {
    Random random = Random();
    return random.nextInt(maxValue) + 1;
  }

  void updateInformation(String newInformation) {
    setState(() {
      //displayedInformation = newInformation;
      String value = "", value2 = "";
      int v1 = int.parse(newInformation);
      int v2 = _generateRandomNumber(v1);
      value2 = v2.toString();
      value = "d$newInformation: $value2";
      displayedInformation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meine App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            displayedInformation,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => updateInformation("4"),
                child: const Text("d4"),
              ),
              ElevatedButton(
                onPressed: () => updateInformation("6"),
                child: const Text("d6"),
              ),
              ElevatedButton(
                onPressed: () => updateInformation("8"),
                child: const Text("d8"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => updateInformation("10"),
                child: const Text("d10"),
              ),
              ElevatedButton(
                onPressed: () => updateInformation("12"),
                child: const Text("d12"),
              ),
              ElevatedButton(
                onPressed: () => updateInformation("20"),
                child: const Text("d20"),
              ),
              ElevatedButton(
                onPressed: () => updateInformation("100"),
                child: const Text("d100"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
