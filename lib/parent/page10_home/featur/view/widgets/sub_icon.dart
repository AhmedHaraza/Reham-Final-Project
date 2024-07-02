import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import 'package:online_school_admission/features/location/views/location_view.dart';

class SubIcon extends StatelessWidget {
  const SubIcon({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuiry = MediaQuery.of(context).size;

    return Bounceable(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LocationView();
            },
          ),
        );
      },
      child: SizedBox(
        width: mediaQuiry.width * 0.15,
        child: Image.asset(
          'assets/icons/Union.png',
          color: Constants.primaryColor,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
