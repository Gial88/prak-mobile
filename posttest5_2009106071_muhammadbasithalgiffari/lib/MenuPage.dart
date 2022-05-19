import 'package:flutter/material.dart';
import 'package:posttest5_2009106071_muhammadbasithalgiffari/FormPage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1A3C40),
        title: Text(
          "Menu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FormPage(),
                          ),
                        );
                      },
                      icon: Icon(Icons.add),
                      label: Text("Add"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1A3C40),
                        elevation: 10,
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      label: Text("Search"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1A3C40),
                        elevation: 10,
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 5, left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFF417D7A),
                            border: Border.all(
                              color: Color(0xFF000000),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food-service.png'),
                                  ),
                                ),
                              ),
                              Text(
                                "BS 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rp. 50.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
