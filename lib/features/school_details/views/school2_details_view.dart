import 'package:flutter/material.dart';
import 'widgets/schoo2_details_body.dart';

class School2DetailsView extends StatelessWidget {
  const School2DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: School2DetailsBody(),
      ),
    );
  }
}
