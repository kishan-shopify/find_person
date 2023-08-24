
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/signup_controller.dart';
import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_button.dart';
import '../../modal/custom/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final SignupController controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

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
                        height: size.height * 0.05,
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
                        "Please Sign Up",
                        style: TextStyle(
                            fontSize: size.width * 0.085,
                            color: ConstColor.primary,
                            fontWeight: FontWeight.w600),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomTextField(
                                controller: controller.name.value,
                                icon: ConstImage.user,
                                hint: " Enter Full Name",
                                keyboard: TextInputType.text,
                                textInputType: [],
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomTextField(
                                controller: controller.phone  .value,
                                icon: ConstImage.phone,
                                hint: " Enter Phone No",
                                keyboard: TextInputType.number,
                                textInputType: [FilteringTextInputFormatter.digitsOnly],
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomTextField(
                                controller: controller.email.value,
                                icon: ConstImage.mail,
                                hint: " Enter Email",
                                keyboard: TextInputType.emailAddress,
                                textInputType: [],
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomTextField(
                                controller: controller.aadhaar.value,
                                icon: ConstImage.idCard,
                                hint: " Enter Aadhaar No",
                                keyboard: TextInputType.number,
                                textInputType: [FilteringTextInputFormatter.digitsOnly],
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomTextField(
                                controller: controller.pan.value,
                                icon: ConstImage.idCard,
                                hint: " Enter PAN No",
                                keyboard: TextInputType.text,
                                textInputType: [],
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              CustomButton(
                                btnLabel: 'Register',
                                onTap: () {

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
                                  "Already Registered? Sign In",
                                  style: TextStyle(
                                      fontSize: size.width * 0.044,
                                      color: ConstColor.primary,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                            ],
                          ),
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
