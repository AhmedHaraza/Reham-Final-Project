import 'package:flutter/material.dart';
import 'package:online_school_admission/features/filtering/views/widgets/filter_body.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FilterBody(),
      ),
    );
  }
}
