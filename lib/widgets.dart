import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  color: Colors.white54,
  fontSize: 20,
);

class IconContent extends StatelessWidget {
  late String text;
  late IconData icon;

  IconContent({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(this.icon, size: 80),
        SizedBox(height: 10.0),
        Text(this.text, style: labelTextStyle),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  late Color color;
  late Widget childCard;
  Function? miFuncion;

  ReusableCard({required this.color, required this.childCard, this.miFuncion});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        this.miFuncion!();
      },
      child: Container(
        child: this.childCard,
        margin: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }
}
