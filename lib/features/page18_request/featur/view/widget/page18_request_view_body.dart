import 'package:flutter/material.dart';
import 'package:online_school_admission/features/page26_payment_method/featur/view/page26_payment_method_view.dart';

import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../parent/payment.dart';
import 'button_page18.dart';

class Page18RequestViewBody extends StatelessWidget {
  const Page18RequestViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBackIconButton(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Image.asset("assets/images/image 4.png",
          height: 100,),
        ),
        const SizedBox(
          height: 20,
        ),
        const ButtonPage18(),
        const Text("request id: #2634"),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
         
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                  textAlign: TextAlign.center,
                   
                    '"Wait until the acceptance \n confirmation email is sent, along with \n a code, to your email."',
                   
                  )),
                Image.asset("assets/images/image 10.png")
            ],
          ),
        ),
   const     SizedBox(height: 16,),

           ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return Payment();
                },
              ));
            },
            child: Text("Next"),
          ),
      ],

    );
  }
}
