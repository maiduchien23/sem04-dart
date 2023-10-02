import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmployeeGridScreen(), //
    );
  }
}

class EmployeeGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: EmployeeGridView(),
    );
  }
}

class EmployeeGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Đặt số cột trong GridView
      ),
      itemCount: employees.length, // Đặt số lượng nhân viên trong danh sách
      itemBuilder: (ctx, index) {
        // Tạo một EmployeeTile widget để hiển thị thông tin của từng nhân viên
        return EmployeeTile(employee: employees[index]);
      },
    );
  }
}

// Định nghĩa Employee model để lưu thông tin nhân viên
class Employee {
  final String name;
  final int age;
  final String position;
  final String avatarAsset;

  Employee({
    required this.name,
    required this.age,
    required this.position,
    required this.avatarAsset,
  });
}

List<Employee> employees = [
  Employee(
    name: 'John Doe',
    age: 30,
    position: 'Software Engineer',
    avatarAsset: 'images/employee1.jpg',
  ),
  Employee(
    name: 'Jane Smith',
    age: 28,
    position: 'UI/UX Designer',
    avatarAsset: 'images/employee2.jpg',
  ),
  // Thêm thông tin của nhân viên khác nếu cần
];

// Widget để hiển thị thông tin của từng nhân viên trong GridView
class EmployeeTile extends StatelessWidget {
  final Employee employee;

  EmployeeTile({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(employee.avatarAsset),
            radius: 30,
          ),
          Text(
            employee.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Age: ${employee.age}, Position: ${employee.position}'),
        ],
      ),
    );
  }
}