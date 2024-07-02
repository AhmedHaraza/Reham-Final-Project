import 'package:flutter/material.dart';
import 'package:online_school_admission/features/school_details/views/widgets/school1_details_body.dart';

class School1DetailsView extends StatelessWidget {
  const School1DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: School1DetailsBody(),
      ),
    );
  }
}
