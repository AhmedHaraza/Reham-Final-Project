import 'package:flutter/material.dart';

import '../../../../../core/constant/const_textstyle.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';

class Page47PaymentMethodViewBody extends StatelessWidget {
  const Page47PaymentMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        Row(
          children: [
            const CustomBackIconButton(),
            const Spacer(),
            Text(
              "Payment Method",
              style: ConstTextStyle.k24Regular,
            ),
            const Spacer(),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
            Image.asset("assets/images/image 93.png"),
            const Text("Personal  536*"),
            TextButton(onPressed:(){} , child: const Text("Remove"))
          ],),
        ),

        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(children: [
            const Icon(Icons.add),
            TextButton(onPressed:(){} , child: const Text("Add new payment method"),),
          ],),
        )
    ],);
  }
}