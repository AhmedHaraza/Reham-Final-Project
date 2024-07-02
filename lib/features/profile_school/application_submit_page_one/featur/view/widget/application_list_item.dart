// import 'package:flutter/material.dart';
// import 'package:online_school_admission/features/profile_school/application_submit_page_one/data/application_model.dart';
//
// import '../../../../../../core/constant/const_color.dart';
// import '../../../../../../core/constant/const_textstyle.dart';
//
// class ApplicationListItem extends StatelessWidget {
//   const ApplicationListItem({super.key, required this.applicationModel});
//   final ApplicationModel applicationModel;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(onTap:applicationModel.onTap ,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 50,
//         vertical: 20
//         ),
//         child: Row(
//           children: [
//             Image.asset(applicationModel.image),
//             const SizedBox(width: 34,),
//             Text(
//               applicationModel.text,
//               style: ConstTextStyle.k24Regular,
//             ),const Spacer(),
//             Icon(
//               applicationModel.iconData,
//               color: ConstColor.kCobaltBlue,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
