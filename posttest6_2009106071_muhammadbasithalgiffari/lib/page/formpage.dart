// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106071_muhammadbasithalgiffari/page/previewpage.dart';
import 'package:posttest6_2009106071_muhammadbasithalgiffari/widget/Controller.dart';

import 'package:flutter/material.dart';
import 'package:posttest6_2009106071_muhammadbasithalgiffari/main.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextController tc = Get.put(TextController());
  final CheckBoxController cc = Get.put(CheckBoxController());
  final RadioController rc = Get.put(RadioController());

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambah Data',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff1A3C40),
      ),
      backgroundColor: Color(0XffEDE6DB),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Data Menu",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: tc.namaMakananCtr,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Masukkan Nama Makanan/Minuman",
                    labelText: "Nama",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: tc.hargaMakananCtr,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Harga",
                    hintText: "Masukkan Harga Makanan/Minuman",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Makanan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Obx(
                        () => Radio<Jenis>(
                          value: Jenis.makan,
                          groupValue: rc.jenis.value,
                          onChanged: (value) {
                            rc.jenis(value);
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Minuman",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Obx(
                        () => Radio<Jenis>(
                          value: Jenis.minum,
                          groupValue: rc.jenis.value,
                          onChanged: (value) {
                            rc.jenis(value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      title: Text("Terbatas"),
                      leading: Obx(
                        () => Checkbox(
                          value: cc.checkbox.value,
                          onChanged: (value) {
                            cc.checkbox(value);
                          },
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: lebar,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      tc.onPressed();
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: lebar,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(PreviewPage());
                    },
                    child: const Text(
                      "Preview Data",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
