import 'package:flutter/material.dart';
import 'package:online_school_admission/features/filtering/views/widgets/custom_check_box.dart';
import 'package:online_school_admission/features/filtering/views/widgets/submited_button.dart';
import '../../../../core/utils/app_theme_manager.dart';
import '../../../../parent/page10_home/featur/view/widgets/custom_text_feild.dart';
import '../../../location/views/widgets/custom_arrow_back.dart';
import 'custom_dropdown_filter.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CustomAppBar(),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  ' Filter ',
                  style: AppThemeManager.textStyle20.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: CustomTextField(
                hintText: 'search by school name',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'fees starts',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: CustomTextField(
                hintText: '',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Curriculums',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomCheckBox(
              title: 'National',
            ),
            const CustomCheckBox(
              title: 'IG',
            ),
            const CustomCheckBox(
              title: 'American',
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Language',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomCheckBox(
              title: 'English',
            ),
            const CustomCheckBox(
              title: 'French',
            ),
            const CustomCheckBox(
              title: 'Arabic',
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Gender',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomCheckBox(
              title: 'Mixed',
            ),
            const CustomCheckBox(
              title: 'Girls',
            ),
            const CustomCheckBox(
              title: 'Not mixed',
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Stages',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomCheckBox(
              title: 'KG',
            ),
            const CustomCheckBox(
              title: 'Elementary',
            ),
            const CustomCheckBox(
              title: 'Middle  school',
            ),
            const CustomCheckBox(
              title: 'High school',
            ),
            const CustomCheckBox(
              title: 'Pre-school',
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Additional Language',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomCheckBox(
              title: 'French',
            ),
            const CustomCheckBox(
              title: 'German',
            ),
            const CustomCheckBox(
              title: 'Arabic',
            ),
            const CustomCheckBox(
              title: 'English',
            ),
            const CustomCheckBox(
              title: 'Spinach',
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'order by',
              style: AppThemeManager.textStyle20.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const FilterDropdown(),
            const SizedBox(
              height: 70,
            ),
            const SubmitedButton(
              text: 'Search',
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
