
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_button.dart';
import 'home_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            ConstImage.background,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.08,
                      bottom: size.height * 0.08,
                      left: size.width * 0.06),
                  child: SvgPicture.asset(
                    ConstImage.car,
                    height: 100,
                    width: 100,
                  )),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.045),
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: ConstColor.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(120))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      Text(
                        "Enter OTP",
                        style: TextStyle(
                            fontSize: size.width * 0.064,
                            color: ConstColor.hintColor,),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        fieldWidth: size.width * 0.12,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        cursorColor: ConstColor.hintColor,
                        borderRadius: BorderRadius.circular(20),
                        borderColor: ConstColor.grey.withOpacity(0.3),
                        focusedBorderColor: ConstColor.grey.withOpacity(0.3),
                        showFieldAsBox: true,
                        textStyle: TextStyle(
                            fontSize: size.width * 0.042,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.031,
                      ),
                      CustomButton(
                        btnLabel: "Submit",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                        },
                        btnColor: ConstColor.primary,
                        labelColor: ConstColor.white,
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Text(
                        "Resend OTP",
                        style: TextStyle(
                            fontSize: size.width * 0.05,
                            color: ConstColor.primary),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Text(
                        "Otp Is sent to 91********51",
                        style: TextStyle(
                            fontSize: size.width * 0.045,
                            color: ConstColor.hintColor),
                      ),
                      SizedBox(
                        height: size.height * 0.011,
                      ),
                      Text(
                        "Not You Number? Correct it",
                        style: TextStyle(
                            fontSize: size.width * 0.045,
                            color: ConstColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
