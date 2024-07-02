import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:online_school_admission/features/school_details/views/school1_details_view.dart';
import 'package:online_school_admission/features/school_details/views/school2_details_view.dart';
import 'package:online_school_admission/features/school_details/views/school3_details_view.dart';

import '../../../../../parent/page10_home/featur/view/widgets/custom_schooh_item.dart';
import '../../../../../parent/page10_home/featur/view/widgets/custom_search_icon.dart';
import '../../../../../parent/page10_home/featur/view/widgets/custom_text_feild.dart';
import '../../../../../parent/page10_home/featur/view/widgets/sub_icon.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 28,
        top: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    suffixIcon: CustomSearchIcon(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SubIcon(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const School1DetailsView();
                    },
                  ),
                );
              },
              child: const CustomSchoohItem(
                schoolImage: 'assets/images/school1.png',
                schoolIcon: 'assets/images/schoolIcon1.png',
                schoolnameAr: 'المدرسة الرسمية الدولية',
                schoolnameEn: 'International public school',
                education: 'National- International',
                location: 'Obour City',
                price: 'Fees start  20,,000 LE',
              ),
            ),
            Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const School2DetailsView();
                    },
                  ),
                );
              },
              child: const CustomSchoohItem(
                schoolImage: 'assets/images/school2.png',
                schoolIcon: 'assets/images/schoolIcon2.png',
                schoolnameAr: 'مدرسه اولاد النيل الدوليه',
                schoolnameEn: ' Nile international school',
                education: 'National- International',
                location: 'Obour City',
                price: 'Fees start  20,,000 LE',
              ),
            ),
            Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const School3DetailsView();
                    },
                  ),
                );
              },
              child: const CustomSchoohItem(
                schoolImage: 'assets/images/school3.png',
                schoolIcon: 'assets/images/schoolIcon3.png',
                schoolnameAr: 'المدرسة المصرية الدولية',
                schoolnameEn: 'Egyptian International School-EIS',
                education: 'National- International',
                location: 'Elsheikh Zayed',
                price: 'Fees start 35,000 LE',
              ),
            ),

             Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const School2DetailsView();
                    },
                  ),
                );
              },
              child: const CustomSchoohItem(
                schoolImage: 'assets/images/image89.png',
                schoolIcon: 'assets/images/image90.png',
                schoolnameAr: ' مدرسة مصر البريطانية الدولية',
                schoolnameEn: ' Egypt British International School',
                education: 'National',
                location: 'Misr El-gdeda',
                price: 'Fees start  115,000 LE',
              ),
            ),
       

          
             Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const School2DetailsView();
                    },
                  ),
                );
              },
              child: const CustomSchoohItem(
                schoolImage: 'assets/images/image20.png',
                schoolIcon: 'assets/images/image92.png',
                schoolnameAr: ' مدرسه البارون للغات  ',
                schoolnameEn: ' Baron Language School',
                education: 'National',
                location: 'Misr El-gdeda',
                price: 'Fees start   25,650 LE',
              ),
            ),
       
       
       
       
          ],
          
        ),
      ),
    );
  }
}
