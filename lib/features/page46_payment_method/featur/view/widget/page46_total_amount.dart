import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page46TotalAmount extends StatelessWidget {
  const Page46TotalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Total Amount"),
          const SizedBox(height: 13,),
          const Text("59000 LE"),
          const SizedBox(height: 50,),
          const Text("Installment Plan:"),
           const SizedBox(height: 50,),
          rowDetales(text1: "6 Months", text2: "9 Months"),
           const SizedBox(height: 20,),
          rowDetales(text1: "10,000", text2: "8,000"),
           const SizedBox(height: 20,),
          rowDetales(text1: "12 Months", text2: "24 Months"),
           const SizedBox(height: 20,),
          rowDetales(text1: "5,000", text2: "3,000"),
        ],
      ),
    );
  }

  Row rowDetales({required dynamic text1, required dynamic text2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1),
        Text(text2),
      ],
    );
  }
}
