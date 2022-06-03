import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_2009106071_muhammadbasithalgiffari/page/formpage.dart';

import '../controller/crud.dart';
import '../controller/firestore.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);
  final FirestoreController fsc = Get.put(FirestoreController());
  final CrudController crudController = Get.put(CrudController());
  @override
  Widget builder(context, snapshot) {
    return (snapshot.hasData)
        ? Column(
            // Looping collection dengan menggunakan map(). Mirip foreach() yang untuk Array
            children: snapshot.data!.docs
                .map<Widget>(
                  (e) => MyListTile(
                    leadingText: e.get('jenis'),
                    title: e.get('name'),
                    subtitle: e.get('harga').toString(),
                    onTap: () {
                      crudController.id(e.id);
                      crudController.nama(e.get('name'));
                      crudController.harga(e.get('harga').toString());
                      Get.to(
                        () => FormPage(
                          isUpdate: true,
                        ),
                      );
                    },
                    // Tekan lama buat hapus
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (_) => CustomAlert(
                          id: e.id,
                        ),
                      );
                    },
                  ),
                )
                .toList(), // Jangan lupa diubah jadi list dengan toList() setelah pakai map()
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          );
  }

  panggilTerus() {
    return StreamBuilder<QuerySnapshot>(
      stream: fsc.menus.value.orderBy('name').snapshots(),
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ElevatedButton.icon(
                onPressed: () => Get.to(FormPage()),
                icon: Icon(Icons.add),
                label: Text("Add"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1A3C40),
                  elevation: 10,
                  padding: EdgeInsets.all(10),
                ),
              ),
              panggilTerus(),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    FirestoreController fsc = Get.find();
    return AlertDialog(
      title: const Text('Hapus Data'),
      content: const Text('Kegiatan ini tidak dapat dikembalikan'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            fsc.menus.value.doc(id).delete();
            Get.back();
          },
          child: const Text(
            'Hapus',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}

// Ini Custom ListTile
class MyListTile extends StatelessWidget {
  const MyListTile(
      {Key? key,
      required this.leadingText,
      required this.title,
      required this.subtitle,
      this.onTap,
      this.onLongPress})
      : super(key: key);

  final String leadingText;
  final String title;
  final String subtitle;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
      title: Text(title),
      subtitle: Text("$subtitle"),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
