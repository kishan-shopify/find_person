import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller/home_screen_controller.dart';
import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_button.dart';
import '../../modal/custom/custom_text_field.dart';
import '../../modal/custom/text_field_onTap.dart';
import 'details_screen.dart';
import 'otp_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController controller = Get.put(HomeScreenController());

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
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
                      },
                      child: Image.asset(
                        ConstImage.userIcon,
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
                          "Know Who Is Behind The Wheel",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.074,
                              color: ConstColor.primary),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      SizedBox(
                          height: size.height * 0.25,
                          width: size.width * 0.4,
                          child: Image.asset(ConstImage.homeScreenLogo)),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomTextField(
                        controller: controller.licenseNumber.value,
                        icon: ConstImage.idCard,
                        hint: " Enter License No",
                        keyboard: TextInputType.text,
                        textInputType: [FilteringTextInputFormatter.digitsOnly],
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomTextFieldOnTap(
                        onTap: () {
                          datePick(controller);
                        },
                        readOnly: true,
                        controller: controller.birthDate.value,
                        icon: ConstImage.birthday,
                        hint: " Enter Date of Birth",
                        keyboard: TextInputType.text,
                        textInputType: [FilteringTextInputFormatter.digitsOnly],
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomButton(
                        btnLabel: 'Search',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
                        },
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
            ],
          ),
        ],
      ),
    );
  }

  void datePick(controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(primary: ConstColor.primary),
          ),
          child: Container(child: child),
        );
      },
    );
    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      controller.birthDate.value.text = formattedDate;
    }
  }
}
