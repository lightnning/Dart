class Person {
  String firstName;
  Person.fromJson(Map data) {
    print('in Person');
  }
  
}
class Employee extends Person {
  // Personはデフォルトのコンストラクタを持っていない
  // super.fromJson(data)を呼ばねばならない
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}
main() {
  var emp = new Employee.fromJson({});
  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  // (emp as Person).firstName = 'Bob';
}