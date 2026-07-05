void executeOperation(double a, double b, double Function(double, double) operation) {
  var result = operation(a, b);
  print('Result: $result');
}

double squareArea(double x, double y){
  return x*y;
}
double triangleArea(double x, double y){
  return 0.5*x*y;
}

double cylinder(double radius, double height){
  return 3.14*(radius*radius)*height;
}

void main(){
  print("พื้นที่รูปสี่เหลี่ยม");
  executeOperation(10, 5, squareArea);
  print("พื้นที่รูปสามเหลี่ยม");
  executeOperation(10, 5, triangleArea);
  print("ปริมาตรทรงกระบอก");
  double r = 3;
  double h = 4;
  print('${cylinder(r, h)}');
}
