class Employee{
  String name;
  Employee(this.name);
  
  double calculateSalary(){
return 0.0 ;
  }
}

class FullTimeEmployee extends Employee{
  double monthlySalary;
  double bonus;
 
  FullTimeEmployee(this.monthlySalary, this.bonus, String name) : super(name);
 
  @override
  double calculateSalary() {
    return monthlySalary + bonus;
  }
}
class PartTimeEmployee extends Employee{
  double hourlyRate;
  double hoursWorked;
  int day;
 
  PartTimeEmployee(this.hourlyRate, this.hoursWorked, this.day, String name)
    : super(name);
 
  @override
  double calculateSalary() {
    return (hourlyRate * hoursWorked) * day;
  }
}

void main() {
  List<Employee> employee = [
    FullTimeEmployee(15000, 2500, 'Jessy'),
    PartTimeEmployee(65, 8, 10, 'May'),
  ];
 
  for (var emp in employee) {
    double salary = emp.calculateSalary();
    print('Employee name: ${emp.name}  salary is: ${salary}');
  }
}
