import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: true,
          elevation:
              0.0, //There is a shadow in appbar to remove that we will have to set the elevation to zero
          title: a[1],
          backgroundColor: Colors.black,
        ),
        body: Column(
          //The same goes for the row Just change the row instead of column
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //This is just like the flex box property in css
          crossAxisAlignment: CrossAxisAlignment
              .end, //Suppose there is a image with more width so the other images will align according to this dimension either from start end or center
          //The column is used to store multiple containers in it
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
              child: Image.network(
                'https://thecircleofaroma.in/cdn/shop/files/picture-steaming-cup-coffee-perfect-coffee-lovers-can-be-used-illustrate-concept-cozy-morning-caffeine-addiction-warm-beverage.jpg?v=1719467884&width=3840',
                height: 10.0,
                width: 10.0,
              ),
            ),
            Container(
              height: 100.0,
              width: 230.0,
              color: Colors.purple,
              child: Image.network(
                'https://thecircleofaroma.in/cdn/shop/files/picture-steaming-cup-coffee-perfect-coffee-lovers-can-be-used-illustrate-concept-cozy-morning-caffeine-addiction-warm-beverage.jpg?v=1719467884&width=3840',
                height: 10.0,
                width: 10.0,
              ),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.green,
              child: Image.network(
                'https://thecircleofaroma.in/cdn/shop/files/picture-steaming-cup-coffee-perfect-coffee-lovers-can-be-used-illustrate-concept-cozy-morning-caffeine-addiction-warm-beverage.jpg?v=1719467884&width=3840',
                height: 10.0,
                width: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
