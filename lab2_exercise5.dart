void Grade(int score){
  print('Score: $score');
  if( score >= 80 ){
    print('Grade A');
  }else if( score >= 70 ){
    print('Grade B');
  }else if( score >= 60 ){
    print('Grade C');
  }else if( score >= 50 ){
    print('Grade D');
  }else{
    print('Grade F');
  }
}


void main(){
  Grade(85);
  Grade(72);
  Grade(50);
  Grade(40);

  print('print 1 to 10');
  for (int i = 1;i <= 10;i++){
    print(i);
  }

  var fruits = ['Apple', 'Banana', 'Cherry'];
  for (var fruit in fruits){
    print('- $fruit');
  }
}