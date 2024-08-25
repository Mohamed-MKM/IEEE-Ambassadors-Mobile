class Employee {
  String name;
  String employeeId;
  String department;
  double salary;

 
  Employee({
    required this.name,
    required this.employeeId,
    required this.department,
    required this.salary,
  });

 
  void getDetails() {
    print('Name: $name');
    print('Employee ID: $employeeId');
    print('Department: $department');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}


class Manager extends Employee {
  int teamSize;


  Manager({
    required String name,
    required String employeeId,
    required String department,
    required double salary,
    required this.teamSize,
  }) : super(
          name: name,
          employeeId: employeeId,
          department: department,
          salary: salary,
        );


  @override
  void getDetails() {
    super.getDetails(); 
    print('Team Size: $teamSize');
  }
}


class Worker extends Employee {
  String shift;


  Worker({
    required String name,
    required String employeeId,
    required String department,
    required double salary,
    required this.shift,
  }) : super(
          name: name,
          employeeId: employeeId,
          department: department,
          salary: salary,
        );

 
  @override
  void getDetails() {
    super.getDetails(); 
    print('Shift: $shift');
  }
}

void main() {

  Manager manager = Manager(
    name: 'MMK',
    employeeId: 'M123',
    department: 'Software Engineering',
    salary: 95000.0,
    teamSize: 10,
  );

 
  Worker worker = Worker(
    name: 'Bob',
    employeeId: 'W456',
    department: 'Production',
    salary: 45000.0,
    shift: 'Day',
  );

 
  print('Manager Details:');
  manager.getDetails();
  
  print('\nWorker Details:');
  worker.getDetails();
}
