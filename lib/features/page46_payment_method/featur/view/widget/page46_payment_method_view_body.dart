import 'package:flutter/material.dart';
import 'package:online_school_admission/features/page46_payment_method/featur/view/widget/page46_button.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text.dart';
import 'page46_form.dart';
import 'page46_name_choies.dart';
import 'page46_total_amount.dart';

class Page46PaymentMethodViewBody extends StatelessWidget {
  const Page46PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        CustomBackIconButton(),
        TitleText(),
        Text("Select a payment method:"),
        SizedBox(height: 50,),
        Page46NameChoies(),
         SizedBox(height: 50,),
        Page46Formes(),
         SizedBox(height: 50,),
        Page46TotalAmount(),
        SizedBox(height: 50,),
        Page46Button(),
         SizedBox(height: 20,),
      ]),
    );
  }
}
