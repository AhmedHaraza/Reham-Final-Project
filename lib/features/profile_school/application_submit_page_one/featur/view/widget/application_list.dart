// import 'package:flutter/material.dart';
// import 'package:online_school_admission/core/routing/extensions.dart';
// import 'package:online_school_admission/features/profile_school/application_submit_page_one/featur/view/widget/application_list_item.dart';
// import '../../../../../../core/routing/routers.dart';
// import '../../../data/application_model.dart';
//
// class ApplicationList extends StatelessWidget {
//   const ApplicationList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<ApplicationModel> application = [
//       ApplicationModel(
//         text: "application 1",
//         onTap: () {
//           context.pushNamed(Routers.applicationSubmitPageTow);
//         },
//       ),
//       ApplicationModel(
//         text: "application 2",
//         onTap: () {},
//       ),
//       ApplicationModel(
//         text: "application 3",
//         onTap: () {},
//       ),
//       ApplicationModel(
//         text: "application 4",
//         onTap: () {},
//       ),
//     ];
//
//     return Column(
//         children: application
//             .map(
//               (e) => ApplicationListItem(
//                 applicationModel: e,
//               ),
//             )
//             .toList());
//
//     // return
//
//     // ListView.builder(
//     //   shrinkWrap: true,
//     //   itemBuilder: (context, index) => ApplicationListItem(
//     //     applicationModel: application[index],
//     //   ),
//     //   itemCount: application.length,
//     // );
//   }
// }
