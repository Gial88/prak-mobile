import 'package:flutter/material.dart';
import 'package:uas_2009106071_muhammabasithalgiffari/main.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: ListView(
        children: [
          Container(
            width: lebar,
            decoration: BoxDecoration(color: Color(0xff00A8CC)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Kotak("assets/images/food1.jpg", "Food 1", lebar),
                Kotak("assets/images/food2.jpg", "Food 2", lebar),
                Kotak("assets/images/food3.jpg", "Food 3", lebar),
                Kotak("assets/images/drink1.jpg", "Drink 1", lebar),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Kembali Ke Halaman Main",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 10,
                    padding: EdgeInsets.all(10),
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
