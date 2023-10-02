import 'package:flutter/material.dart';
import 'employee.dart';

class EmployeeTile extends StatelessWidget {
  final Employee employee;

  EmployeeTile({required this.employee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(employee.avatarAsset),
        radius: 25,
      ),
      title: Text(
        employee.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Age: ${employee.age}, Position: ${employee.position}',
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
