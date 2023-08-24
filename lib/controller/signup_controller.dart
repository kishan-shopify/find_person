import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> phone = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  Rx<TextEditingController> aadhaar = TextEditingController().obs;
  Rx<TextEditingController> pan = TextEditingController().obs;
}