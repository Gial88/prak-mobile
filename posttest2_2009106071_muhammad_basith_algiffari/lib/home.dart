import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Muhammad Basith Algiffari',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0XFFCAF7E3),
      ),
      backgroundColor: const Color(0XffFFEEEE),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Warung Istiqomah",
                  style: TextStyle(
                    fontFamily: "Sora",
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: const Color(0Xff000000),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 40,
                  right: 40,
                ),
                child: Center(
                  child: Text(
                    "Jl. Juanda 1, Komp. BAP,  Kel. Air Putih, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124",
                    style: TextStyle(
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: const Color(0Xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0XEBD8C3),
                  image: DecorationImage(
                    image: AssetImage("assets/images/bibimbap.png"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Center(
                  child: Text(
                    "Bibimbap",
                    style: TextStyle(
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color(0Xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 40,
                  right: 40,
                ),
                child: Center(
                  child: Text(
                    "Rp. 15.000",
                    style: TextStyle(
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color(0Xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 10,
                  right: 10,
                ),
                padding: EdgeInsets.all(5),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0Xff000000),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color(0XffFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
