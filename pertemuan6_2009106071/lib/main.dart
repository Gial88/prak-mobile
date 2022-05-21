import 'package:flutter/material.dart';
import 'package:pertemuan6_2009106071/CheckBoxCtr.dart';
import 'package:pertemuan6_2009106071/TextCtr.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextCtrl tc = Get.put(TextCtrl());
    CheckBoxCtr cc = Get.put(CheckBoxCtr());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 6'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              TextField(
                controller: tc.namaCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama",
                ),
              ),
              ListTile(
                title: Text("Lapar ? "),
                leading: Obx(
                  () => Checkbox(
                    value: cc.islapar.value,
                    onChanged: cc.onPressed,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: tc.onPressed,
                child: const Text('Submit'),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => Get.to(Hal2()),
                child: const Text('Halaman 2'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Hal2 extends StatelessWidget {
  Hal2({Key? key}) : super(key: key);
  TextCtrl tc = Get.find();
  CheckBoxCtr cc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Hai, Nama saya ${tc.nama} dan ${cc.islapar.value ? "Saya Lapar" : "Saya Tidak Lapar"}"),
          ],
        ),
      ),
    );
  }
}
