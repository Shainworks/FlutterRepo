import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: true,
          elevation:
              0.0, //There is a shadow in appbar to remove that we will have to set the elevation to zero
          title: Text(
            "Buy me coffee!",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Image.network(
              'https://thecircleofaroma.in/cdn/shop/files/picture-steaming-cup-coffee-perfect-coffee-lovers-can-be-used-illustrate-concept-cozy-morning-caffeine-addiction-warm-beverage.jpg?v=1719467884&width=3840'),
        ),
      ),
    ),
  );
}
