import 'package:flutter/material.dart';
import 'widgets/school3_details_body.dart';

class School3DetailsView extends StatelessWidget {
  const School3DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: School3DetailsBody(),
      ),
    );
  }
}
