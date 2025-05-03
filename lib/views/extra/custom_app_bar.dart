// import 'package:flutter/material.dart';
// import 'package:list_project/views/screens/main_screen.dart';
// import 'package:list_project/views/constants/colors.dart';

// class Test2CustomAppBar extends StatelessWidget {
//   final String title;
//   const Test2CustomAppBar({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       centerTitle: true,
//       title: Text(
//         title,
//         style: TextStyle(
//           fontWeight: FontWeight.w600,
//           fontSize: 18,
//           color: AppColors.blackTextColor,
//         ),
//       ),
//       leading: InkWell(
//         onTap: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => const MainScreen()),
//           );
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Stack(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(30),
//                 height: 45,
//                 width: 45,
//                 decoration: BoxDecoration(
//                   color: AppColors.backgroundColor,
//                   borderRadius: BorderRadius.circular(60),
//                 ),
//               ),
//               Center(
//                 child: Icon(
//                   Icons.arrow_back_ios_new_rounded,
//                   color: AppColors.secondaryColor,
//                   size: 18,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
