import 'package:flutter/material.dart';
import 'package:login_page_1/screens/login_view.dart';
import 'package:login_page_1/screens/register_view.dart';
import 'package:login_page_1/screens/makanan.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
    },
  ));
}