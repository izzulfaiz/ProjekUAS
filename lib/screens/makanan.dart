import 'package:flutter/material.dart';
import 'package:login_page_1/screens/detailsPage.dart';
import 'package:login_page_1/screens/minuman.dart';

import 'profile.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
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

class _MyHomePageState extends State<MyHomePage> {
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
    hitungTotal();
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.person),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProfilePage();
                              }));
                            },
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Makanan',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Indonesia',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 173.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem(_menu[0].imgPath, _menu[0].foodName,
                              _menu[0].price, _menu[0].jumlah, 0),
                          _buildFoodItem(_menu[1].imgPath, _menu[1].foodName,
                              _menu[1].price, _menu[1].jumlah, 1),
                          _buildFoodItem(_menu[2].imgPath, _menu[2].foodName,
                              _menu[2].price, _menu[2].jumlah, 2),
                          _buildFoodItem(_menu[3].imgPath, _menu[3].foodName,
                              _menu[3].price, _menu[3].jumlah, 3)
                        ]))),
                // IconButton(onPressed: () {}, icon: Icon(Icons.local_drink)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MinumanPage();
                        }));
                      },
                      icon: Icon(Icons.local_drink),
                      iconSize: 30.0,
                    ),
                    Container(
                      height: 65.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1C1428)),
                      child: Center(
                          child: Text('Rp.$_total',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 15.0))),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(
      String imgPath, String foodName, int price, int jumlah, int index) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () async {
              var hasil = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        // heroTag: imgPath,
                        // foodName: foodName,
                        // foodPrice: price,
                        // jumlah: jumlah,
                      )));
              if (hasil != null) {
                setState(() {
                  _menu[index].jumlah = hasil['jumlah'];
                });
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)),
                        Text('Rp.${price}',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.grey)),
                        Text('$jumlah',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold))
                      ])
                ])),
                IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    onPressed: () {})
              ],
            )));
  }
}
