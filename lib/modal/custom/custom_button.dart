import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnLabel;
  final Function onTap;
  final Color btnColor;
  final Color labelColor;

  const CustomButton(
      {Key? key,
      required this.btnLabel,
      required this.onTap,
      required this.btnColor,
      required this.labelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(vertical: size.height * 0.022),
        width: size.width,
        child: Center(
          child: Text(
            btnLabel,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: size.width * 0.048,
              color: labelColor,
            ),
          ),
        ),
      ),
    );
  }
}
