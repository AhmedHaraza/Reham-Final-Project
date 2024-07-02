import 'package:flutter/material.dart';
import 'package:online_school_admission/cachehelper.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import 'package:online_school_admission/school/school_home/featur/view/widgets/profile_view.dart';
import '../../../../parent/page10_home/featur/view/widgets/home_body.dart';
import '../../../../parent/page10_home/featur/view/widgets/profile_view.dart';
import '../../../School_profile.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView2> {
  int currentIndex = 0;
  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> widgetList = const [
    HomeBody(),
    ProfileView(),
  ];

  List<Widget> widgetListSchool = const [
    HomeBody(),
    SchoolProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CacheHelper.getData(key: "isUser") ? widgetList[currentIndex] : widgetListSchool[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Constants.primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: currentIndex,
          onTap: onTap,
        ),
      ),
    );
  }
}
