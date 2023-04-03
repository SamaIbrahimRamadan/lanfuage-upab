import 'package:flutter/material.dart';
import 'package:learning/screens/colors.dart';
import 'package:learning/screens/family.dart';
import 'package:learning/screens/numbers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: const Text("Toku"),
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NumberPage()),
                );
              },
              child: container(
                "Numbers",
                const Color(0xffEF9235),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FamilyPage()),
                );
              },
              child: container("Family Members", Colors.green)),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColorsPage()),
                );
              },
              child: container("Colors ", Colors.purple.shade500)),
        ],
      ),
    );
  }

  Widget container(String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: color),
      width: double.infinity,
      height: 65,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
