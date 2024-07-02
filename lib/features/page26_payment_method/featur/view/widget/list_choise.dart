import 'package:flutter/material.dart';
import 'package:online_school_admission/core/routing/extensions.dart';
import 'package:online_school_admission/features/page26_payment_method/featur/view/widget/choise_item.dart';

import '../../../../../core/routing/routers.dart';
import '../../../data/page26_model.dart';

class ListChoise extends StatelessWidget {
  const ListChoise({super.key});

  @override
  Widget build(BuildContext context) {
    List<Page26Model> choies = [
  Page26Model(
    text: "Cash",
    onTap: () {},
  ),
  Page26Model(
    text: "Credit/Debit Card",
    onTap: () {
      context.pushNamed(Routers.page45PaymentMethod);
    },
  ),
  Page26Model(
    text: "valU",
    onTap: () {
      context.pushNamed(Routers.page46PaymentMethod);
    },
  ),
];

    return Column(children: choies.map((e) => ChoiseItem(page26model: e),).toList(),);
  }
}