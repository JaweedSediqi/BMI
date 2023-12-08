import 'dart:math';

class Calculae_brain{
   Calculae_brain({this.wieght,this.hieght});
  final hieght;
  final wieght;


  double _bmi=0;
  String calculateBMI(){
    _bmi=wieght/pow(hieght/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>25){
      return "over wieght";
    }else if(_bmi>18){
      return "Normal";

    }
    else{
      return "Under wieght";
    }
  }
 String getinformation(){
   if(_bmi>25){
     return "excerze more";
   }else if(_bmi>18){
     return "goood job";

   }
   else{
     return " eat....";
   }

 }


}
