import 'package:flutter/material.dart';

import '../../../../../core/constant/const_textstyle.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';
import 'button_page21.dart';

class Page21PaymentSuccessfulViewBody extends StatelessWidget {
  const Page21PaymentSuccessfulViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBackIconButton(),
        Image.asset("assets/images/image 15.png"),
        const SizedBox(
          height: 17,
        ),
        const Divider(
          thickness: 2,
          endIndent: 150,
          indent: 150,
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          "Transactions Number :12345678",
          style: ConstTextStyle.k20RegularkSlightBlueHue,
        ),
        const SizedBox(
          height: 17,
        ),
        const Divider(
          thickness: 2,
          endIndent: 100,
          indent: 100,
        ),
            const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Amount paid:",
              style: ConstTextStyle.k20RegularkSlightBlueHue,
            ),
            const SizedBox(
              width: 70,
            ),
            Text(
              "250,000 EGP",
              style: ConstTextStyle.k20RegularkSlightBlueHue,
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        const ButtonPage21(),
      ],
    );
  }
}
