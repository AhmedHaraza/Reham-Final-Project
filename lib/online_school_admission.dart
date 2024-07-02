import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routers.dart';

class OnlineSchoolAdmission extends StatelessWidget {
  final AppRouter appRouter;
  const OnlineSchoolAdmission({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) {
        return MaterialApp(
          title: "Online School Admission",
          debugShowCheckedModeBanner: false,
          initialRoute: Routers.onbording,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
