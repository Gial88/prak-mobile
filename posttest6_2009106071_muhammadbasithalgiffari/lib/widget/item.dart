import 'package:get/get.dart';

class Item {
  String url;
  String nama;
  String harga;
  String qty;
  Item({
    required this.url,
    required this.nama,
    required this.harga,
    required this.qty,
  });
}

class AddToCart extends GetxController {
  List<Item> item = <Item>[];

  add(String url, String nama, String harga, String qty) {
    item.add(Item(url: url, nama: nama, harga: harga, qty: qty));
    update();
  }

  del(int index) {
    item.removeAt(index);
    update();
  }
}
