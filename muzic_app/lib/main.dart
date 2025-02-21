import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Muzic",
              style: GoogleFonts.orbitron(fontSize: 40, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: Center(
            child: Wrap(
              spacing: 2.0,
              runSpacing: 2.0,
              children: [
                Pad(colorconatiner: Color(0xffADCBFC), note: "1.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "2.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "3.mp3"),
                Pad(colorconatiner: Color(0xffE247FC), note: "4.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "5.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "6.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "7.mp3"),
                Pad(colorconatiner: Color(0xffE247FC), note: "8.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "9.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "10.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "11.mp3"),
                Pad(colorconatiner: Color(0xffE247FC), note: "12.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "13.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "14.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "15.mp3"),
                Pad(colorconatiner: Color(0xffE247FC), note: "16.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "17.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "18.mp3"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "19.mp3"),
                Pad(colorconatiner: Color(0xffE247FC), note: "20.wav"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "21.mp3"),
                Pad(colorconatiner: Color(0xffff2525), note: "22.wav"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "23.wav"),
                Pad(colorconatiner: Color(0xffE247FC), note: "24.wav"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "25.wav"),
                Pad(colorconatiner: Color(0xffff2525), note: "26.wav"),
                Pad(colorconatiner: Color(0xffADCBFC), note: "27.wav"),
                Pad(colorconatiner: Color(0xffE247FC), note: "28.wav"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pad extends StatefulWidget {
  final Color colorconatiner;
  final String note;
  const Pad({required this.colorconatiner, required this.note, super.key});

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color colorconatiner;
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    colorconatiner = widget.colorconatiner;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        setState(() {
          colorconatiner = Colors.white;
          player.play(AssetSource(widget.note));
        });
        await Future.delayed(const Duration(milliseconds: 300));
        setState(() {
          colorconatiner = widget.colorconatiner;
        });
      },
      child: Container(
        height: height / 8.2,
        width: width / 4.3,
        color: colorconatiner,
      ),
    );
  }
}
