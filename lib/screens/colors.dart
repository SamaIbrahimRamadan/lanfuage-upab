import 'package:flutter/material.dart';

import '../model/model1.dart';
import '../res.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  final List<Number> numbers = const [
    Number(
      filePath: 'colors',
      text: "Burakku",
      text1: "Black",
      img: Res.color_black,
      sound: "black.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Chairo",
      text1: "Brown",
      img: Res.color_brown,
      sound: "brown.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Hokori ppoi kiiro",
      text1: "Dusty yellow",
      img: Res.color_dusty_yellow,
      sound: "dusty yellow.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Gure",
      text1: "grey",
      img: Res.color_gray,
      sound: "gray.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Midori",
      text1: "Green",
      img: Res.color_green,
      sound: "green.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Aka",
      text1: "Red",
      img: Res.color_red,
      sound: "red.wav",
      color: Colors.purple,
    ),
    Number(
      filePath: 'colors',
      text: "Shiro",
      text1: "white",
      img: Res.color_white,
      sound: "white.wav",
      color: Colors.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: const Text(" Color"),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index];
          }),
    );
  }
}
