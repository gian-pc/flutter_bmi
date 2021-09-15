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
        primaryColor: Color(0xff0a0e21),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          thumbColor: Color(0xffeb1555),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 16.0,
          ),
          overlayColor: Color(0xffeb1555).withOpacity(0.3),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
      ),
      home: InputPage(),
    );
  }
}
