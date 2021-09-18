import 'package:flutter/material.dart';
import 'package:flutter_codigo3_bmi/pages/input_page.dart';
import 'package:flutter_codigo3_bmi/widgets.dart';

class ResultPage extends StatelessWidget {
  late String bmiNumber;
  late String result;
  late String interpretation;

  ResultPage(
      {required this.bmiNumber,
      required this.result,
      required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Your results",
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    this.result,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                  Text(
                    this.bmiNumber,
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.interpretation,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
            ),
          ),
          MyNavigatorButton(
              text: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
