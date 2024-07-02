import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:online_school_admission/core/utils/app_theme_manager.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import 'package:online_school_admission/core/utils/widgets/custom_rounded_button.dart';
import 'package:online_school_admission/features/filtering/views/filtering_view.dart';
import 'package:online_school_admission/features/location/views/widgets/custom_arrow_back.dart';
import 'package:online_school_admission/features/location_manualy/views/manualy_location_view.dart';


class LocationBody extends StatelessWidget {
  const LocationBody({super.key});

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
          const CustomAppBar(),
          const Spacer(
            flex: 2,
          ),
          const Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 70,
              child: Icon(
                Icons.location_on_outlined,
                size: 120,
                color: Constants.primaryColor,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'What is Your Location?',
            style: AppThemeManager.textStyle28,
          ),
          const Spacer(
            flex: 1,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FilteringView();
                  },
                ),
              );
            },
            title: 'Allow Location Access',
            color: Colors.white,
            buttonColor: Constants.primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'we need to know your location in order to suggest nearby schools',
            style: AppThemeManager.textStyle16.copyWith(
              color: const Color(0xff263238),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
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
                    return const ManualyLocationView();
                  },
                ),
              );
            },
            child: Text(
              'Enter Location Manually',
              style: AppThemeManager.textStyle20.copyWith(
                color: Constants.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: Constants.primaryColor,
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
