import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Jenis { makan, minum, bukan }

class TextController extends GetxController {
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController hargaCtrl = TextEditingController();

  @override
  void onClose() {
    namaCtrl.dispose();
    hargaCtrl.dispose();
    super.onClose();
  }

  var jenis = Jenis.makan.obs;
  onChanged(value) {
    jenis(value);
  }

  var checkbox = false.obs;
  onTap(bool? value) {
    checkbox(value);
  }
}
