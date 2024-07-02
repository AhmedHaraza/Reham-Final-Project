import 'package:flutter/material.dart';
import 'package:online_school_admission/Payment.dart';
import 'package:online_school_admission/core/constant/const_textstyle.dart';
import 'package:online_school_admission/features/page18_request/featur/view/page18_request_view.dart';
import 'package:online_school_admission/parent/payment.dart';
import 'page22_check_box.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';

class Page22BookingInterviewViewBody extends StatelessWidget {
  const Page22BookingInterviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const CustomBackIconButton(),
              const Spacer(),
              Text(
                "booking interview",
                style: ConstTextStyle.k15Regular,
              ),
              const Spacer(),
            ],
          ),
          Row(
            children: [
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(),
                  top: BorderSide(),
                  right: BorderSide(),
                )),
                child: const Center(child: Text("online")),
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(),
                  top: BorderSide(),
                )),
                child: const Center(
                  child: Text(" face to face"),
                ),
              ),
            ],
          ),
          const Page22checkbox(),
          Text(
            "*If you choose online, may you go to\n the website to attend it there* ",
            style: ConstTextStyle.k15RegularkDarkRed,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return PaymentScreen();
                },
              ));
            },
            child: Text("submit"),
          ),
        ],
      ),
    );
  }
}
