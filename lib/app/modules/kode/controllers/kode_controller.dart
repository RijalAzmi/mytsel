import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KodeController extends GetxController {
  TextEditingController kodeC = TextEditingController();

  @override
  void onClose() {
    kodeC.dispose();
    super.onClose();
  }
}
