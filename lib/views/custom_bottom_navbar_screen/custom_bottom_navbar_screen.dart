import 'package:flutter/material.dart';
import 'package:list_project/views/expenses_screens/expenses_screen.dart';
import 'package:list_project/views/screens/employee_screen/employee_screen.dart';
import 'package:list_project/views/screens/dashboard_screen/dashboard_screen.dart';
import 'package:list_project/views/screens/employee_task_screen/employee_task_screen.dart';
import 'package:list_project/views/screens/task_tab_screen/task_tab_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> screenOptions = [
    ExpensesScreen(),
    EmployeeScreen(),
    TaskTabScreen(),
    EmployeeTaskScreen(),
    DashboardScreen(),
    // DashboardScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: CustomAppBar(title: 'Leave'),
      // ),
      body: screenOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Expenses'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1),
            label: 'Employee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upcoming_rounded),
            label: 'EmpTask',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Lead'),
        ],
        // currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
