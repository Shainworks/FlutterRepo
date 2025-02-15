import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text("Hello World"),
//       ),
//     ),
//   );
// }
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My dashatar app",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Image.asset('images/img.png'),
        ),
      ),
    ),
  );
}
