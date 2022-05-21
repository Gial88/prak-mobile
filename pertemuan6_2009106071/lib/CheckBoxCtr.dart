import 'package:get/get.dart';

class CheckBoxCtr extends GetxController {
  var islapar = false.obs;
  onPressed(bool? newValue) {
    islapar(newValue);
  }
}
