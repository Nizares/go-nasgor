import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController nohpCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController profesiCtrl = TextEditingController();

  @override
  void onClose() {
    namaCtrl.dispose();
    nohpCtrl.dispose();
    emailCtrl.dispose();
    profesiCtrl.dispose();
    super.onClose();
  }
}
