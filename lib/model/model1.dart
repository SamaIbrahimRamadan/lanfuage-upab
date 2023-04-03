import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  final String text, text1, filePath, img, sound;
  final Color color;
  final double? width1;
  const Number({
    Key? key,
    required this.text,
    required this.text1,
    required this.filePath,
    required this.img,
    this.width1,
    required this.sound,
    required this.color,
  }) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.amber.shade100,
          width: 70,
          height: 100,
          child: Image.asset(
            widget.img,
            width: widget.width1 ?? 300,
          ),
        ),
        Container(
          height: 100,
          width: 322.6,
          color: widget.color,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0, left: 18),
                    child: Text(
                      widget.text,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, left: 18),
                    child: Text(
                      widget.text1,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 100,
              ),
              IconButton(
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: "assets/sounds/${widget.filePath}/");
                  player.play(widget.sound);
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              const Spacer(
                flex: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
