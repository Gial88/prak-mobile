import 'package:flutter/material.dart';
import 'package:get/get.dart';

Card promo(String url, String text, String harga, String diskon) {
  return Card(
    child: Container(
      margin: EdgeInsets.all(10),
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              backgroundColor: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            harga,
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                backgroundColor: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            diskon,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              backgroundColor: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Card BestSeller(String url, String nama, String harga, double width) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: 150,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF1A3C40),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                width: 150,
                height: 150,
                child: Image.asset(url),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      harga,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
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

class DetailPage extends StatelessWidget {
  List<String> cart = [];
  DetailPage({
    Key? key,
    required this.url,
    required this.nama,
    required this.harga,
  }) : super(key: key);
  final String url;
  final String nama;
  final String harga;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
        backgroundColor: Color(0XFF417D7A),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                height: 300,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0XFF417D7A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      harga,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // final mySnackbar = SnackBar(
                              //   content: Text(
                              //     "Maaf Pilihan Menu Sedang Habis",
                              //     style: TextStyle(
                              //         fontSize: 30,
                              //         fontWeight: FontWeight.bold,
                              //         color: Colors.white),
                              //   ),
                              //   duration: Duration(seconds: 3),
                              //   padding: EdgeInsets.all(10),
                              //   backgroundColor: Colors.black,
                              // );
                              // ScaffoldMessenger.of(context)
                              //     .showSnackBar(mySnackbar);
                              // Navigator.pop(context);
                            },
                            child: Text(
                              "Tambah Pesanan",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF1A3C40),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 10,
                              padding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
