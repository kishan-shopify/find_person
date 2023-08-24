import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  Rx<TextEditingController> licenseNumber = TextEditingController().obs;
  Rx<TextEditingController> birthDate = TextEditingController().obs;
}