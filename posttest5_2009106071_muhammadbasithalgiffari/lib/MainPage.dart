import 'package:flutter/material.dart';
import 'package:posttest5_2009106071_muhammadbasithalgiffari/Fungsi.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1A3C40),
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DetailPage(
                                      "assets/images/promo1.jpg",
                                      "Promo 1",
                                      "Rp. 50.000",
                                      lebar,
                                      tinggi,
                                      context),
                                ),
                              );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DetailPage(
                                      "assets/images/promo2.jpg",
                                      "Promo 2",
                                      "Rp. 40.000",
                                      lebar,
                                      tinggi,
                                      context),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DetailPage(
                                      "assets/images/promo3.jpg",
                                      "Promo 3",
                                      "Rp. 20.000",
                                      lebar,
                                      tinggi,
                                      context),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(
                            "assets/images/promo1.jpg",
                            "Best Seller 1",
                            "Rp. 50.000",
                            lebar,
                            tinggi,
                            context),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(
                            "assets/images/promo2.jpg",
                            "Best Seller 2",
                            "Rp. 40.000",
                            lebar,
                            tinggi,
                            context),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(
                            "assets/images/promo3.jpg",
                            "Best Seller 3",
                            "Rp. 60.000",
                            lebar,
                            tinggi,
                            context),
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
