import 'package:flutter/material.dart';
import 'package:list_project/views/screens/task_tab_screen/create_task_screen.dart';

class TaskTabScreen extends StatelessWidget {
  const TaskTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
            // CustomButton(
            //   text: 'Create Task',
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return CreateTaskScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateTaskScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Create Task",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
