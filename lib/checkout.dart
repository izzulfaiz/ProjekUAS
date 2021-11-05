import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class Menu {
  String imgPath, foodName;
  int jumlah;
  int price;
  Menu({
    required this.imgPath,
    required this.foodName,
    required this.price,
    required this.jumlah,
  });
}

class _CheckOutPageState extends State<CheckOutPage> {
  var _total = 0;
  void hitungTotal() {
    var totalSementara = 0;
    _menu.forEach((element) {
      totalSementara += element.price * element.jumlah;
    });
    _total = totalSementara;
  }

  var _menu = [
    Menu(
        imgPath: 'assets/plate1.png',
        foodName: 'Bakso',
        price: 10000,
        jumlah: 0),
    Menu(
        imgPath: 'assets/plate2.png',
        foodName: 'Nasi Goreng',
        price: 10000,
        jumlah: 0),
    Menu(
        imgPath: 'assets/plate6.png',
        foodName: 'Sate Ayam',
        price: 15000,
        jumlah: 0),
    Menu(
        imgPath: 'assets/plate5.png',
        foodName: 'Rendang',
        price: 20000,
        jumlah: 0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: Container(
        child: Center(
            child: Text('Rp.$_total',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 15.0))),
      ),
    );
  }
}
