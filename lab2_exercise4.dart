void main(){
  String? middleName;
  String city = 'Phrae' ;

  int middleNameLength = middleName?.length ?? 0;
  print('Middle name lenght: $middleNameLength');

  print('City length: ${city.length}');

  middleName ??= 'N/A';
  print('Middle name : $middleName');
}