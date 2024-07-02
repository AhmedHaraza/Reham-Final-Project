import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_school_admission/core/routing/app_router.dart';
import 'cachehelper.dart';
import 'firebase_options.dart';
import 'online_school_admission.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  await ScreenUtil.ensureScreenSize();
  runApp(OnlineSchoolAdmission(
    appRouter: AppRouter(),
  ));
}
