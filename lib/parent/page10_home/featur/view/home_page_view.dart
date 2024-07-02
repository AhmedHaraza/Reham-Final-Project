import 'package:flutter/material.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import '../../../../school/school_home/featur/view/widgets/home_body.dart';
import '../../../../school/school_home/featur/view/widgets/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> widgetList = const [
    HomeBody(),
    ProfileViewSchool(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widgetList[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Constants.primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/personIcon.png')),
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
