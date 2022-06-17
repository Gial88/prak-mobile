import 'package:flutter/material.dart';
import 'package:uas_2009106071_muhammabasithalgiffari/page1.dart';
import 'post_result_model.dart';
import 'dart:math';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var rng = Random().nextInt(10) + 1;
  dynamic postresult;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            (postresult != null)
                ? Text(
                    postresult.id + "|" + postresult.name,
                    style: TextStyle(fontSize: 20),
                  )
                : Text("Tidak ada"),
            ElevatedButton(
              onPressed: () =>
                  postResult.connectToAPI(rng.toString(), "nama").then(
                (value) {
                  postresult = value;
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text((value == null)
                            ? "Data Gagal Didapat"
                            : "Data Berhasil didapat"),
                      ),
                    );
                  });
                },
              ),
              child: Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}
