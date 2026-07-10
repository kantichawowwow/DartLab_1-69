class Temperature{
  double _celsius = 0.0;

  double get celsius => _celsius;

  set celsius(double c){
    if(c < -273.15) {
      print("Error: อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์");
    } else {
      _celsius = c;
    }
  }
  double get fahrenheit => (_celsius*9/5)+32;
}

void main(){
  var temp = Temperature();
  temp.celsius = 25.0;
  print("Celsuis: ${temp.celsius}");
  print("fahrenheit: ${temp.fahrenheit}");

}