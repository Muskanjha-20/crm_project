import 'package:flutter/material.dart';
import 'package:list_project/views/screens/employee_screen/tab_bar_view_list.dart';

class TabControllerBar extends StatelessWidget {
  const TabControllerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.white,
            // indicatorColor: Colors.blue,

            // dividerColor: Colors.red,
            indicator: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            padding: EdgeInsets.only(left: 5, right: 5),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Review'),
              Tab(text: 'Approved'),
              Tab(text: 'Rejected'),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Center(child: Text('Review')),
                Center(child: Text('Approved')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarViewList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
