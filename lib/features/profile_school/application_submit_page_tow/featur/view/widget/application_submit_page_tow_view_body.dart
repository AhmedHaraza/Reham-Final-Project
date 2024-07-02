import 'package:flutter/material.dart';
import 'application_botton.dart';
import 'application_title.dart';

import '../../../../../../core/widgets/custom_back_icon_button.dart';

class ApplicationSubmitPageTowViewBody extends StatelessWidget {
  const ApplicationSubmitPageTowViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(children: [
        
        const CustomBackIconButton(),
      
         const ApplicationTitle()
      ,Image.asset("assets/images/image 19.png"),
      const SizedBox(height: 50,),
         const ApplicationBotton(),
       const SizedBox(height: 29,),
      ],),
    );
  }
}