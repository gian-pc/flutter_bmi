import 'package:flutter/material.dart';
import 'package:flutter_codigo3_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xff1d1e33);
const bottomContainerHeight = 75.0;
const bottomContainerColor = Color(0xffeb1556);
const tabSelectedColor = Color(0xff111328);

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("Male");
                    },
                    child: ReusableCard(
                      color: activeCardColor,
                      childCard: IconContent(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("Female");
                    },
                    child: ReusableCard(
                      color: tabSelectedColor,
                      childCard: IconContent(
                        text: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childCard: FaIcon(FontAwesomeIcons.plus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childCard: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childCard: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}


