import 'package:flutter/material.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import 'package:online_school_admission/features/filtering/views/widgets/submited_button.dart';
import '../../../../core/utils/app_theme_manager.dart';
import '../../../location/views/widgets/custom_arrow_back.dart';

class School2DetailsBody extends StatelessWidget {
  const School2DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuiry = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: mediaQuiry.width * 0.22,
                  height: mediaQuiry.height * 0.1,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/schoolIcon2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: mediaQuiry.width * 0.1,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: mediaQuiry.width * 0.5,
                      child: const Text(
                        'مدرسه اولاد النيل الدوليه',
                        style: AppThemeManager.textStyle16,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuiry.width * 0.5,
                      child: Text(
                        ' Nile sons international school',
                        style: AppThemeManager.textStyle16.copyWith(
                          fontSize: 13,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: mediaQuiry.width,
              height: mediaQuiry.height * 0.3,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage('assets/images/school2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "The school's vision sees the educational process as a result of integration and interaction between parents, students, the school, and the community as a whole. To achieve the desired goal, it is essential to activate the relationship between parents, teachers, and students to help students excel in their studies. We hope to embark on a new era of development by obtaining a quality certificate gained through collaboration to evolve from traditional teaching methods to modern approaches aimed at students' intellectual growth and self-reliance. We need to instill in students a sense of belonging to their country, as well as ethics and morals. At Sons of the Nile International School, we provide quality education that reinforces national values. We will inspire hope to ensure students' confidence in themselves and their future. We are committed to providing students, families, and the community with support and guidance by offering engaging and meaningful learning opportunities.",
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'The application will open in3- December  It will open until the end of the month ',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
                color: Constants.primaryColor,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'To apply for the academic year 2023/2024, please click on the "Fill out the form" button to provide your information.',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const SubmitedButton(text: 'Fill out the form'),
            const SizedBox(
              height: 20,
              
            ),
          ],
        ),
      ),
    );
  }
}
