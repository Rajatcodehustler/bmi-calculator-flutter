import 'dart:math';


 class calculatorBMI {
  int height;
  int weight;
  double _bmi;
  calculatorBMI({this.height,this.weight});

  String calculateBMI() {
    _bmi= ((weight)/pow((height/100),2));
    return _bmi.toStringAsFixed(1);
  }
  String getresults(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if(_bmi<=18.5){
      return 'UNDERWEIGHT';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String interpretation(){
    if(_bmi>=25){
      return 'you\'re fat, get that ass moving';
    }
    else if(_bmi<=18.5){
      return 'congrats tree twig, you\'re thin';
    }
    else{
      return ' eat more, unless you wanna die';
    }
  }
 }