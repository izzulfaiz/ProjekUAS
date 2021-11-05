import 'package:flutter/material.dart';
import 'package:login_page_1/main.dart';
import 'package:login_page_1/screens/makanan.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;
  final jumlah;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice, this.jumlah});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';
  int? _count;
  Menu? _menu;
  @override
  void incrementCount() {
    setState(() {
      _count = _count! + 1;
    });
  }

  void decrementCount() {
    setState(() {
      _count = _count! - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_count == null) {
      _count = widget.jumlah;
    }
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Details',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            ),
          ]),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 120.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width),
              ),
              Positioned(
                  top: 30.0,
                  left: (MediaQuery.of(context).size.width / 2) - 100.0,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0,
                      ))),
              Positioned(
                  top: 250.0,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.foodName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${widget.foodPrice}',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  color: Colors.grey)),
                          Container(
                            width: 125.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color(0xff7a9bee)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: decrementCount,
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        color: Color(0xff7a9bee)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                                Text('$_count',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'MOntserrat',
                                        fontSize: 15.0)),
                                InkWell(
                                  onTap: incrementCount,
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        color: Colors.white),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xff7a9bee),
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildInfoCard("Berat", '300', 'G'),
                            SizedBox(
                              width: 10.0,
                            ),
                            _buildInfoCard("Kalori", '289', 'CAL'),
                            SizedBox(
                              width: 10.0,
                            ),
                            _buildInfoCard("Lemak", '10', 'G'),
                            SizedBox(
                              width: 10.0,
                            ),
                            _buildInfoCard("Vtamin", 'C,B6', 'VIT'),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ),
                      Row(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop({
                                'jumlah': _count,
                              });
                            },
                            child: Text(
                              'CEK',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15.0),
                            ))
                      ])
                      // SizedBox(height: 20.0),
                      // Padding(
                      //   padding: EdgeInsets.only(bottom: 5.0),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.only(
                      //             topLeft: Radius.circular(10.0),
                      //             topRight: Radius.circular(10.0),
                      //             bottomLeft: Radius.circular(25.0),
                      //             bottomRight: Radius.circular(25.0)),
                      //         color: Colors.black),
                      //     height: 50.0,
                      //     child: Center(
                      //       child: (Text(
                      //         'CEK',
                      //         style: TextStyle(
                      //             fontFamily: 'Montserrat',
                      //             color: Colors.white),
                      //       )),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
      onTap: () {
        selectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle == selectedCard ? Color(0xff7a9bee) : Colors.white,
          border: Border.all(
              color: cardTitle == selectedCard
                  ? Colors.transparent
                  : Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0),
              child: Text(cardTitle,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.0,
                    color: cardTitle == selectedCard
                        ? Colors.white
                        : Colors.grey.withOpacity(0.7),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(info,
                        style: TextStyle(
                            fontFamily: 'MOntserrat',
                            fontSize: 14.0,
                            color: cardTitle == selectedCard
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text(
                      unit,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: cardTitle == selectedCard
                            ? Colors.white
                            : Colors.black,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
