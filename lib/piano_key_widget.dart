import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoKeyWidget extends StatelessWidget {
  const PianoKeyWidget({Key? key, required this.path, required this.color})
      : super(key: key);

  final String path;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      onPressed: (() async {
        final player = AudioPlayer();
        // player.setSource(AssetSource("assets/note1.wav"));
        await player.play(AssetSource(path));
      }),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(10)),
            border: Border.all(
                color: Colors.black12,
                width: 3,
                style: BorderStyle.solid,
                strokeAlign: StrokeAlign.inside),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: const Offset(0, 3))
            ]),
        width: 30,
        height: 100,
        margin: const EdgeInsets.all(0),
      ),
    );
  }
}
