import 'package:flutter/material.dart';
import 'package:learning/res.dart';

import '../model/model1.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  final List<Number> numbers = const [
    Number(
      filePath: 'numbers',
      text: "Ichi",
      text1: "one",
      img: Res.number_one,
      sound: "number_one_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "NI",
      text1: "two",
      img: Res.number_two,
      sound: "number_two_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "San",
      text1: "three",
      img: Res.number_three,
      sound: "number_three_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Shi",
      text1: "four",
      img: Res.number_four,
      sound: "number_four_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Go",
      text1: "five",
      img: Res.number_five,
      sound: "number_five_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Roku",
      text1: "Six",
      img: Res.number_six,
      sound: "number_six_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Sebun",
      text1: "seven",
      img: Res.number_seven,
      sound: "number_seven_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Hachi",
      text1: "eight",
      img: Res.number_eight,
      sound: "number_eight_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "Kyo",
      text1: "nine",
      img: Res.number_nine,
      sound: "number_nine_sound.mp3",
      color: Color(0xffEF9235),
    ),
    Number(
      filePath: 'numbers',
      text: "ju",
      text1: "ten",
      img: Res.number_ten,
      sound: "number_ten_sound.mp3",
      color: Color(0xffEF9235),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: const Text("Number"),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index];
          }),
    );
  }
}
