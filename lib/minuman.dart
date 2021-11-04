import 'package:flutter/material.dart';

class MinumanPage extends StatefulWidget {
  const MinumanPage({Key? key}) : super(key: key);

  @override
  _MinumanPageState createState() => _MinumanPageState();
}

class _MinumanPageState extends State<MinumanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // children: <Widget>[
                        //   IconButton(
                        //     icon: Icon(Icons.person),
                        //     color: Colors.white,
                        //     onPressed: () {
                        //       Navigator.push(context,
                        //           MaterialPageRoute(builder: (context) {
                        //         return ProfilePage();
                        //       }));
                        //     },
                        //   )
                        // ],
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
                Text('Minuman',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Indonesia',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
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
                // Padding(
                //     padding: EdgeInsets.only(top: 45.0),
                //     child: Container(
                //         height: MediaQuery.of(context).size.height - 300.0,
                //         child: ListView(children: [
                //           _buildFoodItem(_menu[0].imgPath, _menu[0].foodName,
                //               _menu[0].price, _menu[0].jumlah, 0),
                //           _buildFoodItem(_menu[1].imgPath, _menu[1].foodName,
                //               _menu[1].price, _menu[1].jumlah, 1),
                //           _buildFoodItem(_menu[2].imgPath, _menu[2].foodName,
                //               _menu[2].price, _menu[2].jumlah, 2),
                //           _buildFoodItem(_menu[3].imgPath, _menu[3].foodName,
                //               _menu[3].price, _menu[3].jumlah, 3)
                //         ]))),
                // IconButton(onPressed: () {}, icon: Icon(Icons.local_drink)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     IconButton(
                //       onPressed: () {
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (context) {
                //           return MinumanPage();
                //         }));
                //       },
                //       icon: Icon(Icons.local_drink),
                //       iconSize: 30.0,
                //     ),
                //     Container(
                //       height: 65.0,
                //       width: 120.0,
                //       decoration: BoxDecoration(
                //           border: Border.all(
                //               color: Colors.grey,
                //               style: BorderStyle.solid,
                //               width: 1.0),
                //           borderRadius: BorderRadius.circular(10.0),
                //           color: Color(0xFF1C1428)),
                //       // child: Center(
                //       //     child: Text('Rp.$_total',
                //       //         style: TextStyle(
                //       //             fontFamily: 'Montserrat',
                //       //             color: Colors.white,
                //       //             fontSize: 15.0))),
                //     )
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
