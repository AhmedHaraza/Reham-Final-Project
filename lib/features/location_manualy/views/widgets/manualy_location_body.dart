import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:online_school_admission/core/utils/app_theme_manager.dart';
import '../../../../parent/page10_home/featur/view/widgets/custom_search_icon.dart';
import '../../../../parent/page10_home/featur/view/widgets/custom_text_feild.dart';
import '../../../filtering/views/filtering_view.dart';
import '../../../location/views/widgets/custom_arrow_back.dart';

class ManualyLocationBody extends StatelessWidget {
  const ManualyLocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const CustomAppBar(),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Enter your Location',
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
          const Spacer(
            flex: 1,
          ),
          CustomTextField(
            enabled: false,
            hintText: 'enter your location',
            suffixIcon: CustomSearchIcon(
              backgroundColor: Colors.grey[200],
              iconColor: Colors.black,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FilteringView();
                  },
                ),
              );
            },
            child: Text(
              'use my current location',
              style: AppThemeManager.textStyle24.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'search result',
            style: AppThemeManager.textStyle24,
          ),
          const Spacer(
            flex: 15,
          )
        ],
      ),
    );
  }
}
