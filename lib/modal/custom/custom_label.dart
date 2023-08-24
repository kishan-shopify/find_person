import 'package:flutter/material.dart';

import '../const/const_color.dart';

class CustomLabel extends StatelessWidget {
  final String label;

  const CustomLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
        alignment: Alignment.centerLeft,
        height: size.height * 0.06,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ConstColor.white,
          boxShadow: [
            BoxShadow(blurRadius: 3.0, color: ConstColor.grey.withOpacity(0.3)),
          ],
        ),
        child: Text(label,style: TextStyle(
          fontSize: size.width * 0.046,
          color: ConstColor.hintColor
        ),),

    );
  }
}
