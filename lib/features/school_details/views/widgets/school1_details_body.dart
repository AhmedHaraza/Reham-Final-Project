import 'package:flutter/material.dart';
import 'package:online_school_admission/features/filtering/views/widgets/submited_button.dart';
import '../../../../core/utils/app_theme_manager.dart';
import '../../../location/views/widgets/custom_arrow_back.dart';

class School1DetailsBody extends StatelessWidget {
  const School1DetailsBody({super.key});

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
                      image: AssetImage('assets/images/schoolIcon1.png'),
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
                        'المدرسة الرسمية الدولية',
                        style: AppThemeManager.textStyle16,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuiry.width * 0.5,
                      child: Text(
                        'International public school',
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
                  image: AssetImage('assets/images/school1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'The International Public School in El Obour was established in October 2018. It follows the British curriculum and operates as a government school under the supervision of the Ministry of Education, with technical oversight from the International Schools Foundation in Egypt. IPS El Obour currently accepts students up to the fourth grade for the academic year 2022/2023, gradually expanding to higher grades. For more information, you can visit the Egyptian Schools Guide website under "The International Public School El Obour.',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/school1Image.png'),
            const SizedBox(
              height: 10,
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
