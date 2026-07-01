void executeOperation(int a, int b, int Function(int, int) operation) {
  var result = operation(a, b);
  print('Result: $result');
}

int square(int x, int y){
  return x*y;
}
int triangle(int x, int y){
  return 0.5*x*y;
}