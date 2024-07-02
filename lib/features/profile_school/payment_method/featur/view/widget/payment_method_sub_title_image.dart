import 'package:flutter/material.dart';

import '../../../../../../core/constant/const_textstyle.dart';

class PaymentMethodSubTitleImage extends StatelessWidget {
  const PaymentMethodSubTitleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(children: [
          Image.asset("assets/images/Vector 1.png"),
          const SizedBox(width: 8,),
            Text("Adding a bank account Number",style:ConstTextStyle.k22Regular),
      ],),
    );
  }
}


