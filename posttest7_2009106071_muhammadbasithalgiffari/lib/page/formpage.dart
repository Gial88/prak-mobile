// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_2009106071_muhammadbasithalgiffari/page/previewpage.dart';

import 'package:flutter/material.dart';

import '../controller/crud.dart';
import '../controller/firestore.dart';
import '../controller/dispose.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key, this.isUpdate = false}) : super(key: key);
  bool isUpdate;
  TextController tsc = Get.put(TextController());
  FirestoreController fsc = Get.find();
  CrudController crudController = Get.find();
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    getString(Jenis value) {
      if (value == Jenis.makan) {
        return "Makanan";
      } else if (value == Jenis.minum) {
        return "Minuman";
      } else {
        return "Bukan Makan/Minum";
      }
    }

    if (isUpdate) {
      tsc.namaCtrl.text = crudController.nama.value;
      tsc.hargaCtrl.text = crudController.harga.value;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${this.isUpdate ? 'Update' : 'Tambah'} Data",
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
                  controller: tsc.namaCtrl,
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
                  controller: tsc.hargaCtrl,
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
                          groupValue: tsc.jenis.value,
                          onChanged: (value) {
                            tsc.jenis(value);
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
                          groupValue: tsc.jenis.value,
                          onChanged: (value) {
                            tsc.jenis(value);
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
                          value: tsc.checkbox.value,
                          onChanged: (value) {
                            tsc.checkbox(value);
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
                      isUpdate
                          ? fsc.menus.value
                              .doc(crudController.id.value)
                              .update({
                              "name": tsc.namaCtrl.text,
                              "harga": int.tryParse(tsc.hargaCtrl.text) ?? -1,
                              "jenis": getString(tsc.jenis.value),
                              "promo": tsc.checkbox.value,
                            })
                          : fsc.menus.value.add({
                              "name": tsc.namaCtrl.text,
                              "harga": int.tryParse(tsc.hargaCtrl.text) ?? -1,
                              "jenis": getString(tsc.jenis.value),
                              "promo": tsc.checkbox.value,
                            });
                      FocusScope.of(context).unfocus();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Data berhasil ${this.isUpdate ? 'Diupdate' : 'Ditambahkan'}",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "${this.isUpdate ? 'Update' : 'Tambah'} Data",
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
