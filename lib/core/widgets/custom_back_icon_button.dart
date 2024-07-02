import 'package:flutter/material.dart';

class CustomBackIconButton extends StatelessWidget {
  const CustomBackIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric( horizontal: 15),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context, false),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.blue,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}