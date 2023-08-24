import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../modal/const/const_color.dart';
import '../../modal/const/const_image.dart';
import '../../modal/custom/custom_label.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
                      onTap: () {
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
                          "Driver Details",
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
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.045),
                          height: size.height,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(120))),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 75,
                                  child: ClipOval(
                                    child: Image.asset(ConstImage.profilePhoto),
                                  ),
                                ),
                                text("DL Holder Name", size),
                                const CustomLabel(label: "Full Name"),
                                text("DL Number", size),
                                const CustomLabel(label: "Full Name"),
                                text("Issue Date", size),
                                const CustomLabel(label: "Full Name"),
                                text("Licence Validity", size),
                                const CustomLabel(label: "Full Name"),
                                text("Vehicle Class", size),
                                const CustomLabel(label: "Full Name"),
                                text("Licensing Authority", size),
                                const CustomLabel(label: "Full Name"),
                                text("RTO Code", size),
                                 const CustomLabel(label: "Full Name"),
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

  Widget text(String label, Size size) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.025,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: size.width * 0.038,
                  color: ConstColor.hintColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}
