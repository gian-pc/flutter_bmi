import 'package:flutter/material.dart';
import 'package:flutter_codigo3_bmi/pages/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI App",
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff0a0e21),
          primaryColor: Color(0xff0a0e21)),
      home: InputPage(),
    );
  }
}


