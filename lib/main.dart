import 'package:flutter/material.dart';
import 'package:list_project/views/custom_bottom_navbar_screen/custom_bottom_navbar_screen.dart';
import 'package:list_project/views/expenses_screens/submit_expenses_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainScreen(),
      // home: SubmitExpensesScreen(),
      // home: ExpensesScreen(),
      // home: TestCustomAppBar(title: 'hello'),
      // home: ApppBarrr(),
      // home: EmployeeTaskScreen(),
      // home: EmployeeTaskScreen(),
      // home: EmployeeTaskScreen(),
      // home: DashboardScreen(),
      // home: CreateTaskScreen(),
      // home: ListTransferSacreen(),
    );
  }
}
