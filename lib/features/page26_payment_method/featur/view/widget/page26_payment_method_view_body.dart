// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:online_school_admission/features/page45_payment_method/featur/view/page45_payment_method_view.dart';

import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text.dart';
import 'list_choise.dart';

class Page26PaymentMethodViewBody extends StatelessWidget {
  const Page26PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBackIconButton(),
        TitleText(),
        Text("Select a payment method:"),
        ListChoise(),
      ],
    );
    ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) {
            return Page45PaymentMethodView();
          },
        ));
      },
      child: Text("Next"),
    );
  }
}
