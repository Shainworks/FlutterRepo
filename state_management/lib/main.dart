import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  Color brown = Colors.brown;
  Color black = Colors.black;
  Color temp = Colors.white;
  final player = AudioPlayer();
  List<Color> colours = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple
  ];
  int appbar = 0;
  int scaffold = 0;
  Random r = new Random();
  List Sounds = ['Kick.wav', 'Ride.wav', 'Snare.wav', 'Tom.wav'];
  int soundposition = 0;
  @override
  Widget build(BuildContext context) {
    List<Text> a = [
      //List is just like an array which stores related data type if specified with <Text> it only accepts text widgets
      Text(
        "Dashatar App",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Text(
        "Darshan App",
        style: TextStyle(color: Colors.white, fontSize: 30),
      )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colours[scaffold],
        appBar: AppBar(
          centerTitle: true,
          elevation:
              0.0, //There is a shadow in appbar to remove that we will have to set the elevation to zero
          title: IconButton(
              onPressed: () {
                soundposition = r.nextInt(4);
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.blue,
              )),
          backgroundColor: colours[appbar],
        ),
        body: MaterialButton(
          child: Image.network(
            'https://thecircleofaroma.in/cdn/shop/files/picture-steaming-cup-coffee-perfect-coffee-lovers-can-be-used-illustrate-concept-cozy-morning-caffeine-addiction-warm-beverage.jpg?v=1719467884&width=3840',
            height: 200.0,
            width: 200.0,
          ),
          onPressed: () {
            setState(() {
              //Whenever the setState function is called, all the code within the build function is re-run which also updates the UI.
              count++;
              // temp = brown;
              // brown = black;
              // black = temp;
              appbar = r.nextInt(6);
              scaffold = r.nextInt(6);
              player.play(AssetSource(Sounds[
                  soundposition])); //Well i am not able to pick it with string variable so we are gonna use it as it is
            });
          },
        ),
      ),
    );
  }
}
