import 'package:flutter/material.dart';

import '../model/model1.dart';
import '../res.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({Key? key}) : super(key: key);

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  final List<Number> numbers = const [
    Number(
      filePath: 'family_members/',
      text: "Chichioya",
      text1: "Father",
      img: Res.family_father,
      sound: "number_one_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Musume",
      text1: "daughter",
      img: Res.family_daughter,
      sound: "number_two_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Ojisan",
      text1: "GrandFather",
      img: Res.family_grandfather,
      sound: "number_three_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Hahaoya",
      text1: "Mother",
      img: Res.family_mother,
      sound: "number_four_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Sobo",
      text1: "Grand Mother",
      img: Res.family_grandmother,
      sound: "number_five_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Nisan",
      text1: "older brother",
      img: Res.family_older_brother,
      sound: "number_six_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Ane",
      text1: "order sister",
      img: Res.family_older_sister,
      sound: "number_seven_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Musuko",
      text1: "son",
      img: Res.family_son,
      sound: "number_eight_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Ane",
      text1: "Younger sister",
      img: Res.family_younger_sister,
      sound: "number_seven_sound.mp3",
      color: Colors.green,
    ),
    Number(
      filePath: 'family_members/',
      text: "Musuko",
      text1: "younger_brother",
      img: Res.family_younger_brother,
      sound: "number_eight_sound.mp3",
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: const Text("Family Member"),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index];
          }),
    );
  }
}
