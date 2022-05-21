import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextCtrl extends GetxController {
  var nama = "".obs;
  TextEditingController namaCtrl = TextEditingController();
  onPressed() {
    nama(namaCtrl.text);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    namaCtrl.dispose();
  }
}
