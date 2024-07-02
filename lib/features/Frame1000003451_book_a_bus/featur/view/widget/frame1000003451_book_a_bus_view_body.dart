import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text_and_divider.dart';

class Frame1000003451BookABusViewBody extends StatelessWidget {
  const Frame1000003451BookABusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(children:const [
CustomBackIconButton(),
        TitleTextAndDivider(text: "Book a bus",),
    ],);
  }
}