// ignore_for_file: prefer_const_constructors
import 'package:app_agroz/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenPerfil extends StatefulWidget {
  const ScreenPerfil({Key? key}) : super(key: key);

  @override
  _ScreenPerfilState createState() => _ScreenPerfilState();
}

class _ScreenPerfilState extends State<ScreenPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Colors.black87,
          height: Get.height * 0.500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Escolha sua",
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
              Text(
                "Melhor foto",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/images/logo_user.png",
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                    height: 70,
                    width: 80,
                    child: Image.asset("assets/images/agroz-07.png")),
                Text("Camera")
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Container(
                    height: 70,
                    width: 80,
                    child: Image.asset("assets/images/logo_galery.png")),
                Text("Galeria"),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        ElevatedButton(
          child: Text(
            'Continuar',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Get.off(ScreenHome());
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        ),
      ],
    ));
  }
}
