import 'package:flutter/material.dart';

import '../../../../../core/widgets/text_filed_with_color_whisoer.dart';

class Page45Formes extends StatelessWidget {
  const Page45Formes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(children: [
        TextFiledWithColorWhisoer(hintText: "card number",),
        SizedBox(height: 33,),
        TextFiledWithColorWhisoer(hintText: "card holder number",),
           SizedBox(height: 33,),
         Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          SizedBox(
            width: 100,
            child: TextFiledWithColorWhisoer(hintText: "MM/YY",)),
            SizedBox(width: 21,),
          SizedBox(width: 100,
            child: TextFiledWithColorWhisoer(hintText: "cvv",)),
        ],), 
      ],),
    );
  }
}