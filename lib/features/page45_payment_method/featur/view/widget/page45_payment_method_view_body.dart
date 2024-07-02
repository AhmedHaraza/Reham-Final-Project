import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text.dart';
import 'page45_button.dart';
import 'page45_formes.dart';
import 'page45_name_choies.dart';

class Page45PaymentMethodViewBody extends StatelessWidget {
  const Page45PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBackIconButton(),
        TitleText(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 51),

          child: Page45NameChoies(),
        ),SizedBox(height: 100,),
        Page45Formes(),
        SizedBox(height: 100,),
        Page45Button()
      ],
    );
  }
}

