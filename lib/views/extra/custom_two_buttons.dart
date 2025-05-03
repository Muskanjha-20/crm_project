// import 'package:flutter/material.dart';
// import 'package:list_project/utils/constants/colors.dart';

// class CustomTwoButton extends StatelessWidget {
//   final String filledButtonText;
//   final String outlinedButtonText;
//   final VoidCallback onFilledPressed;
//   final VoidCallback onOutlinedPressed;

//   const CustomTwoButton({
//     super.key,
//     required this.filledButtonText,
//     required this.outlinedButtonText,
//     required this.onFilledPressed,
//     required this.onOutlinedPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         OutlinedButton(
//           onPressed: onOutlinedPressed,
//           style: OutlinedButton.styleFrom(
//             side: const BorderSide(color: AppColors.primaryColor),
//             foregroundColor: AppColors.primaryColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             padding: const EdgeInsets.only(
//               left: 50,
//               right: 50,
//               top: 20,
//               bottom: 20,
//             ),
//           ),
//           child: Text(outlinedButtonText),
//         ),
//         const SizedBox(width: 16),
//         ElevatedButton(
//           onPressed: onFilledPressed,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: AppColors.primaryColor,
//             foregroundColor: AppColors.whiteColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             padding: const EdgeInsets.only(
//               left: 50,
//               right: 50,
//               top: 20,
//               bottom: 20,
//             ),
//           ),
//           child: Text(filledButtonText),
//         ),
//       ],
//     );
//   }
// }
