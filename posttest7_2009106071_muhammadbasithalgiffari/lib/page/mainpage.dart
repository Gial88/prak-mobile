import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: Text(
                  "Promo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Get.to(DetailPage(
                                  url: "assets/images/promo1.jpg",
                                  nama: "Promo 1",
                                  harga: "Rp. 50.000"));
                            },
                            child: promo("assets/images/promo1.jpg", "Promo 1",
                                "Rp. 100.000", "Rp. 50.000"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Get.to(
                                DetailPage(
                                  url: "assets/images/promo2.jpg",
                                  nama: "Promo 2",
                                  harga: "Rp. 40.000",
                                ),
                              );
                            },
                            child: promo("assets/images/promo2.jpg", "Promo 2",
                                "Rp. 70.000", "Rp. 40.000"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              Get.to(
                                DetailPage(
                                  url: "assets/images/promo3.jpg",
                                  nama: "Promo 3",
                                  harga: "Rp. 20.000",
                                ),
                              );
                            },
                            child: promo("assets/images/promo3.jpg", "Promo 3",
                                "Rp. 50.000", "Rp. 20.000"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
              ),
              Text(
                "Best Seller",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(
                      DetailPage(
                        url: "assets/images/promo1.jpg",
                        nama: "Best Seller 1",
                        harga: "Rp. 50.000",
                      ),
                    );
                  },
                  child: BestSeller("assets/images/promo1.jpg", "Best Seller 1",
                      "50.000", lebar),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(
                      DetailPage(
                        url: "assets/images/promo2.jpg",
                        nama: "Best Seller 2",
                        harga: "Rp. 40.000",
                      ),
                    );
                  },
                  child: BestSeller("assets/images/promo2.jpg", "Best Seller 2",
                      "40.000", lebar),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(
                      DetailPage(
                        url: "assets/images/promo3.jpg",
                        nama: "Best Seller 3",
                        harga: "Rp. 60.000",
                      ),
                    );
                  },
                  child: BestSeller("assets/images/promo3.jpg", "Best Seller 3",
                      "60.000", lebar),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
