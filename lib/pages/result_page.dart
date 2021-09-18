import 'package:flutter/material.dart';
import 'package:flutter_codigo3_bmi/pages/input_page.dart';
import 'package:flutter_codigo3_bmi/widgets.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Normal",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  ),
                  Text(
                    "50",
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text("You have a normal...", style: TextStyle(fontSize: 24.0),),
                ],
              ),
            ),
          ),
          MyNavigatorButton(text: "RE-CALCULATE", onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
