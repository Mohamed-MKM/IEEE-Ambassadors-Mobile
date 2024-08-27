class Staff {
  String id;
  String name;
  String jobTitle;
  double salary;

  Staff(this.id, this.name, this.jobTitle, this.salary);

  void displayInfo() {
    print('ID: $id');
    print('Name: $name');
    print('Job Title: $jobTitle');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}


class Manager extends Staff {
  List<String> teamMembers;

  Manager(String id, String name, String jobTitle, double salary, this.teamMembers)
      : super(id, name, jobTitle, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Team Members: ${teamMembers.join(', ')}');
  }
}

// Derived class for workers
class Worker extends Staff {
  String department;

  Worker(String id, String name, String jobTitle, double salary, this.department)
      : super(id, name, jobTitle, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Department: $department');
  }
}

void main() {
  Manager manager = Manager('M001', 'Mohamed Mk', 'Project Manager', 100000.0, ['Ahmed', 'Hasan']);
  Worker worker = Worker('W001', 'Ali Sh', 'Software Engineer', 50000.0, 'Engineering');

  print('Manager Info:');
  manager.displayInfo();
  
  print('\nWorker Info:');
  worker.displayInfo();
}
