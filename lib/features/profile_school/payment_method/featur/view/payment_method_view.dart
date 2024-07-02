import 'package:flutter/material.dart';

import 'widget/payment_method_view_body.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PaymentMethodViewBody(),);
  }
}