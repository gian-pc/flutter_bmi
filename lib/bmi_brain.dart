import 'dart:math';

class BMIBrain {
  int height = 0;
  int weight = 0;
  double bmi = 0;

  BMIBrain({required this.height, required this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation(){
    if(bmi >= 25){
      return "Try to excercise more.";
    }else if(bmi >18){
      return "You have a normal body, good job!";
    }else{
      return "You can eat a bit more";
    }
  }


}
