
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/signup_controller.dart';
import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_button.dart';
import '../../modal/custom/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final SignupController controller = Get.put(SignupController());

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
                  top: size.height * 0.06,
                  bottom: size.height * 0.04,
                  right: size.width * 0.05,
                  left: size.width * 0.15,
                ),
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    SvgPicture.asset(
                      ConstImage.car,
                      height: 50,
                      width: 50,
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        ConstImage.back,
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
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
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.15),
                        child: Text(
                          "Hello Chris!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.074,
                              color: ConstColor.primary),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.045),
                          height: size.height,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(120))),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                text("Full Name", size),
                                const SizedBox(height: 7,),
                                CustomTextField(
                                  readOnly: true,
                                  controller: controller.name.value,
                                  icon: ConstImage.user,
                                  hint: " Enter Full Name",
                                  keyboard: TextInputType.text,
                                  textInputType: [],
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                text("Phone Number", size),
                                const SizedBox(height: 7,),
                                CustomTextField(
                                  readOnly: true,
                                  controller: controller.phone  .value,
                                  icon: ConstImage.phone,
                                  hint: " Enter Phone No",
                                  keyboard: TextInputType.number,
                                  textInputType: [FilteringTextInputFormatter.digitsOnly],
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                text("Email", size),
                                const SizedBox(height: 7,),
                                CustomTextField(
                                  readOnly: true,
                                  controller: controller.email.value,
                                  icon: ConstImage.mail,
                                  hint: " Enter Email",
                                  keyboard: TextInputType.emailAddress,
                                  textInputType: [],
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                text("Aadhaar Number", size),
                                const SizedBox(height: 7,),
                                CustomTextField(
                                  readOnly: true,
                                  controller: controller.aadhaar.value,
                                  icon: ConstImage.idCard,
                                  hint: " Enter Aadhaar No",
                                  keyboard: TextInputType.number,
                                  textInputType: [FilteringTextInputFormatter.digitsOnly],
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                text("PAN Number", size),
                                const SizedBox(height: 7,),
                                CustomTextField(
                                  readOnly: true,
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
                                  btnLabel: 'Edit Details',
                                  onTap: () {},
                                  btnColor: ConstColor.white,
                                  labelColor: ConstColor.hintColor,
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                CustomButton(
                                  btnLabel: 'Logout',
                                  onTap: () {},
                                  btnColor: ConstColor.primary,
                                  labelColor: ConstColor.white,
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                              ],
                            ),
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

  Widget text(String label, Size size){
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 25,),
        Text(label,style: TextStyle(fontSize: size.width * 0.04,color: ConstColor.hintColor,fontWeight: FontWeight.w500),),
      ],
    );
  }

}
