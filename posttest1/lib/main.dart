import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST 1 Gial"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: lebar,
              height: 100,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
              ),
              child: Text(
                "2009106071",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sora",
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: lebar,
              height: 100,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
              ),
              child: Text(
                "Muhammad Basith Algiffari",
                style: TextStyle(
                  fontSize: 251,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sora",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
