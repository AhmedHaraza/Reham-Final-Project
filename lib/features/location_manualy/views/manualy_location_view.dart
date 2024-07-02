import 'package:flutter/material.dart';
import 'package:online_school_admission/features/location_manualy/views/widgets/manualy_location_body.dart';

class ManualyLocationView extends StatelessWidget {
  const ManualyLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ManualyLocationBody(),
      ),
    );
  }
}
