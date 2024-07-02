import 'package:flutter/material.dart';
import 'widgets/location_body.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LocationBody(),
      ),
    );
  }
}
