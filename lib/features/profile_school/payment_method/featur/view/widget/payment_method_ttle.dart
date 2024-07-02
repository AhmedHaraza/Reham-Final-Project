import 'package:flutter/material.dart';

import '../../../../../../core/constant/const_textstyle.dart';

class PaymentMethodTitle extends StatelessWidget {
  const PaymentMethodTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Payment Method",
        style: ConstTextStyle.k24Regularunderline,
      ),
    );
  }
}