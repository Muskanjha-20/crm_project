// import 'package:flutter/material.dart';
// import 'package:list_project/utils/constants/colors.dart';

// class CustomOutlinedButton extends StatelessWidget {
//   final String text;
//   const CustomOutlinedButton({
//     super.key,
//     required this.text,
//     required Null Function() onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: () => Navigator.pop(context),
//       style: OutlinedButton.styleFrom(
//         padding: EdgeInsets.only(top: 20, bottom: 20),
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.transparent,
//         side: BorderSide(color: AppColors.primaryColor),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             color: AppColors.primaryColor,
//             fontSize: 14,
//           ),
//         ),
//       ),
//     );
//   }
// }
