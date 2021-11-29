// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:app_agroz/screens/screen_perfil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        color: Colors.black87,
        height: Get.height * 0.500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Escolha o seu", style: TextStyle(color: Colors.white))
              ],
            ),
            Text(
              "User Name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ex:",
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.bold),
                ),
                Text(
                  "@",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "agroz",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        height: 40,
        width: 200,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person, color: Colors.grey, size: 20),
            hintText: '@username',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(75)),
          ),
        ),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        child: Text(
          'Continuar',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Get.off(ScreenPerfil());
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
      ),
    ]));
  }
}
