import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_back_icon_button.dart';
import 'payment_method_add_new.dart';
import 'payment_method_sub_title_image.dart';
import 'payment_method_ttle.dart';

class PaymentMethodViewBody extends StatelessWidget {
  const PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBackIconButton(),
         const SizedBox(height: 13,),
        const PaymentMethodTitle(),
         const SizedBox(height: 50,),
        const PaymentMethodSubTitleImage(),
        const SizedBox(height: 7,),
        const PaymentMethodAddNew(),
        const SizedBox(height: 50,),
        const Divider(thickness: 5,),
        const SizedBox(height: 50,),
         const PaymentMethodSubTitleImage(),
        const SizedBox(height: 7,),
        const PaymentMethodAddNew(),
         const SizedBox(height:50,),
         ElevatedButton(onPressed: () {

         }, child: const Text("Add"))
      ],
    );
  }
}

