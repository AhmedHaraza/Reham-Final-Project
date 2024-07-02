import 'package:flutter/material.dart';
import 'package:online_school_admission/features/filtering/views/widgets/submited_button.dart';
import '../../../../core/utils/app_theme_manager.dart';
import '../../../../core/utils/constants.dart';
import '../../../location/views/widgets/custom_arrow_back.dart';

class School3DetailsBody extends StatelessWidget {
  const School3DetailsBody({super.key});

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
                      image: AssetImage('assets/images/schoolIcon3.png'),
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
                        'المدرسة المصرية الدولية',
                        style: AppThemeManager.textStyle16,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuiry.width * 0.5,
                      child: Text(
                        'Egyptian International School ',
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
                  image: AssetImage('assets/images/school3.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'The Egyptian International School in Sheikh Zayed, Giza, a government school, was inaugurated in 2014 based on a trilateral protocol involving the International Baccalaureate Organization (IBO), the sponsoring organization Green Land International Schools, and the Ministry of Education and Technical Education (directly affiliated with the General Education Sector). The Egyptian International School in Sheikh Zayed is the first government international school in the Middle East and Africa to obtain international accreditation for the primary and middle school programs, as well as ISO 9001 certification. Since its opening, the school has received local and international acclaim for its leadership in inclusive education, aligning with the directives of President Abdel Fattah El-Sisi. Over the past five years, it has achieved accreditation for the primary and middle school programs, ISO 9001 certification, and a distinction certificate for inclusion from various civil organizations and the Ministry of Solidarity.',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/school3Image.png'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'The application will open in 2- December It will end on 15th October',
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
