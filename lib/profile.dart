import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Profile',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                title: Text("Nama",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  'Hasif Izzul Faiz',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
