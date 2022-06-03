import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  var checkbox = false.obs;
  onChanged(bool? value) {
    checkbox(value);
  }
}

enum Jenis { makan, minum, bukan }

class RadioController extends GetxController {
  var jenis = Jenis.makan.obs;
  onChanged(value) {
    jenis(value);
  }
}

class TextController extends GetxController {
  var namaMakanan = "".obs;
  var hargaMakanan = "".obs;

  final namaMakananCtr = TextEditingController();
  final hargaMakananCtr = TextEditingController();

  onPressed() {
    namaMakanan = namaMakananCtr.text.obs;
    hargaMakanan = hargaMakananCtr.text.obs;
  }

  // Mirip dispose() di Stateful
  @override
  void onClose() {
    namaMakananCtr.dispose();
    hargaMakananCtr.dispose();
    super.onClose();
  }
}
