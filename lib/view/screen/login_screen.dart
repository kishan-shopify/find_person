
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';
import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_button.dart';
import '../../modal/custom/custom_text_field.dart';
import 'otp_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());

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
                    left: size.width * 0.06
                  ),
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
                        "Welcome",
                        style: TextStyle(
                            fontSize: size.width * 0.064,
                            color: ConstColor.primary),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Text(
                        "Please Sign In",
                        style: TextStyle(
                            fontSize: size.width * 0.085,
                            color: ConstColor.primary,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomTextField(
                        controller: controller.mobile.value,
                        icon: ConstImage.phone,
                        hint: " Enter Phone No",
                        keyboard: TextInputType.number,
                        textInputType: [FilteringTextInputFormatter.digitsOnly],
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomButton(
                        btnLabel: 'Request OTP',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => OTPScreen()));
                        },
                        btnColor: ConstColor.primary,
                        labelColor: ConstColor.white,
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignupScreen()));
                        },


                        child: Text(
                          "Not Registered Yet? Sign Up",
                          style: TextStyle(
                              fontSize: size.width * 0.044,
                              color: ConstColor.primary,
                              fontWeight: FontWeight.w600),
                        ),
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
