import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_piano/piano_key_widget.dart';

void main() {
  runApp(const MyApp());
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
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Center(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                // color: Colors.white,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 15,
                      color: Colors.black,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoKeyWidget(
                          path: "note1.wav",
                          color: Colors.deepPurple,
                        ),
                        PianoKeyWidget(
                          path: "note2.wav",
                          color: Colors.blue,
                        ),
                        PianoKeyWidget(
                          path: "note3.wav",
                          color: Colors.lightBlue,
                        ),
                        PianoKeyWidget(
                          path: "note4.wav",
                          color: Colors.green,
                        ),
                        PianoKeyWidget(
                          path: "note5.wav",
                          color: Colors.yellow,
                        ),
                        PianoKeyWidget(
                          path: "note6.wav",
                          color: Colors.orange,
                        ),
                        PianoKeyWidget(
                          path: "note7.wav",
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

