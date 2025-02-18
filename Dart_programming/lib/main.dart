import 'package:flutter/material.dart';

// Class definition
class Jai {
  int a = 98;

  // Constructor
  Jai(int a) {
    this.a = a;
  }

  // Method to display a message
  void display() {
    print("Hey, this is me Darshan");
  }

  // Method to calculate square of 15
  int cal() {
    int i = 15;
    return i * i;
  }

  // Method to check if the number is even
  bool checkeven() {
    return a % 2 == 0;
  }
}

void main() {
  // Object creation and method calls
  Jai obj = new Jai(786);
  obj.display(); // Output: Hey, this is me Darshan
  print(obj.a); // Output: 786

  int res = obj.cal();
  print(res); // Output: 225

  // Loop to check even numbers from 1 to 10
  for (int i = 1; i <= 10; i++) {
    Jai obj2 = new Jai(i);
    if (obj2.checkeven()) {
      print(i); // Output: Even numbers in range 1-10
    }
  }

  // Working with lists
  List arr = [213, 233, 34, 456, 567, 67, 768, 78];
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]); // Output: Elements of the list
  }

  // Working with maps (Dart equivalent of objects in JS)
  var details = {
    'Firstname': 'Darshan',
    'Lastname': 'MS',
    'Status': 'Single',
  };

  // Adding a new key-value pair
  details['Salary'] = '0';

  // Iterating over a map
  details.forEach((key, value) {
    print('Key: $key, Value: $value');
  });

  // Arithmetic operations
  int k = 10;
  int t = 20;
  int o = k + t;
  double j = o / 10;
  double h = j * 100;
  print(h); // Output: 300.0

  // Sum of numbers from 100 to 1000
  int sum = 0;
  for (int i = 100; i <= 1000; i++) {
    sum = sum + i;
  }
  print(sum); // Output: 495550

  // String operations
  String text = "Dart Programming";

  // Extracting substrings
  print(text.substring(0, 4)); // Output: Dart
  print(text.substring(5)); // Output: Programming

  // Changing case
  String name = "dart";
  print(name.toUpperCase()); // Output: DART
  print(name.toLowerCase()); // Output: dart

  // Checking if a string contains a word
  String sentence = "I love Flutter and Dart";
  print(sentence.contains("Flutter")); // Output: true
  print(sentence.contains("React")); // Output: false

  // Replacing text in a string
  String text1 = "I love JavaScript";
  print(text1.replaceAll("JavaScript", "Dart")); // Output: I love Dart

  // Removing whitespace
  String text2 = "   Hello Dart!   ";
  print(text2.trim()); // Output: Hello Dart!
  print(text2.trimLeft()); // Output: Hello Dart!
  print(text2.trimRight()); // Output:    Hello Dart!
}
