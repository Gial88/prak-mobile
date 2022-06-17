import 'package:flutter/material.dart';
import 'package:uas_2009106071_muhammabasithalgiffari/page1.dart';
import 'package:uas_2009106071_muhammabasithalgiffari/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyPage(),
      initialRoute: '/',
      routes: {'/page3': (context) => Page3()},
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: lebar,
                height: tinggi,
                decoration: BoxDecoration(
                  color: Color(0xff142850),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          width: 200,
                          child: Column(
                            children: [
                              Text(
                                "Card View dan ListView",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Page1()));
                                },
                                child: Text(
                                  "CLView",
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          width: 200,
                          child: Column(
                            children: [
                              Text(
                                "API Request dan Snackbar",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/page3');
                                },
                                child: Text(
                                  "API Request",
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
                            ],
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

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Card Kotak(String url, String nama, double width) {
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
                        fontSize: 35,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
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
