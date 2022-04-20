import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Jenis { makan, minum, bukan }

class _MyHomePageState extends State<MyHomePage> {
  String nama = "", harga = "";
  Jenis jenis = Jenis.bukan;
  bool limited = false;
  final CtrlNama = TextEditingController();
  final CtrlHarga = TextEditingController();
  bool submit = false;

  void dispose() {
    CtrlNama.dispose();
    CtrlHarga.dispose();
    super.dispose();
  }

  String getJenis(Jenis? value) {
    if (value == Jenis.makan) {
      return "Makanan";
    } else if (value == Jenis.minum) {
      return "Minuman";
    } else {
      return "Bukan Pilihan";
    }
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Muhammad Basith Algiffari',
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
                  controller: CtrlNama,
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
                  controller: CtrlHarga,
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
                      leading: Radio(
                        value: Jenis.makan,
                        groupValue: jenis,
                        onChanged: (Jenis? value) {
                          setState(() {
                            jenis = Jenis.makan;
                          });
                        },
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
                      leading: Radio(
                        value: Jenis.minum,
                        groupValue: jenis,
                        onChanged: (Jenis? value) {
                          setState(() {
                            jenis = Jenis.minum;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: limited,
                        onChanged: (bool? value) {
                          setState(() {
                            limited = value ?? false;
                          });
                        }),
                    Text(
                      "Terbatas",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: lebar,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        submit = true;
                        nama = CtrlNama.text;
                        harga = CtrlHarga.text;
                      });
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
                if (submit)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: lebar,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Info Menu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nama Menu : $nama",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Harga Menu : $harga",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jenis Menu : ${getJenis(jenis)}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Stock : ${limited ? 'Terbatas' : 'Tidak Terbatas'}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: lebar,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                submit = false;
                              });
                            },
                            child: const Text(
                              "Tutup",
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
          ),
        ],
      ),
    );
  }
}
