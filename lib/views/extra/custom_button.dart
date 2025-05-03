// import 'package:flutter/material.dart';
// import 'package:list_project/utils/constants/colors.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   const CustomButton({super.key, required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.primaryColor,
//         // gradient: LinearGradient(
//         //   colors: [AppColors.primaryColor, AppColors.secondaryColor],
//         //   // begin: Alignment.topLeft,
//         //   begin: Alignment.topCenter,
//         //   end: Alignment.bottomCenter,
//         // ),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.only(top: 20, bottom: 20),
//           foregroundColor: Colors.white,
//           backgroundColor: Colors.transparent,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Colors.white,
//               letterSpacing: 0.1,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
