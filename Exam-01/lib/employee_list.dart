import 'package:flutter/material.dart';
import 'employee_tile.dart'; // Import the EmployeeTile widget
import 'employee.dart'; // Import the Employee data model

class EmployeeListScreen extends StatelessWidget {
  final List<Employee> employees; // Assuming you have a list of employees

  EmployeeListScreen({required this.employees});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (ctx, index) {
          return EmployeeTile(employee: employees[index]);
        },
      ),
    );
  }
}
