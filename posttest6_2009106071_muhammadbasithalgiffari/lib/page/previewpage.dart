import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../widget/Controller.dart';

class PreviewPage extends StatelessWidget {
  PreviewPage({Key? key}) : super(key: key);
  final TextController tc = Get.find();
  final RadioController rc = Get.find();
  final CheckBoxController cc = Get.find();
  getString(Jenis value, context) {
    if (value == Jenis.makan) {
      return "Makan";
    } else if (value == Jenis.minum) {
      return "Minum";
    } else {
      return "Bukan Makan/Minum";
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preview Data',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff1A3C40),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: width,
            height: heigth,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Nama Menu : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "${tc.namaMakanan}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Harga Menu : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "${tc.hargaMakanan}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Jenis Menu : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      getString(rc.jenis.value, context),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Apakah Menu ini sedang promo ? ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      cc.checkbox.value ? 'Ya' : 'Tidak',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
