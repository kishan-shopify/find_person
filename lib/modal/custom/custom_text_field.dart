
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const/const_color.dart';

class CustomTextField extends StatelessWidget {
  final String icon;
  final String hint;
  final TextEditingController controller;
  final List<TextInputFormatter> textInputType;
  final TextInputType keyboard;
  final bool readOnly;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.hint,
    required this.controller,
    required this.textInputType,
    required this.keyboard,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ConstColor.white,
          boxShadow: [
            BoxShadow(blurRadius: 3.0, color: ConstColor.grey.withOpacity(0.3)),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
                height: 25, width: 25, child: Image.asset(icon)),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              controller: controller,
              cursorColor: ConstColor.hintColor,
                  keyboardType: keyboard,
                  inputFormatters: textInputType,
              readOnly: readOnly,
              style: const TextStyle(

                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
               contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(color: ConstColor.hintColor),
              ),
            )),
          ],
        ));
  }
}
