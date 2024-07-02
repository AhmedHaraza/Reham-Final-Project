import 'package:flutter/material.dart';

class PaymentMethodAddNew extends StatelessWidget {
  const PaymentMethodAddNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 40),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(5)),
          child: const Text("Add new Account Number"),
        ),
        const SizedBox(
          width: 21,
        ),
        TextButton(onPressed: () {}, child: const Text("Add"))
      ],
    );
  }
}
