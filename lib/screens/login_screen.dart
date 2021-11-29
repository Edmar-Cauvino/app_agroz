// ignore_for_file: prefer_const_constructors
import 'package:app_agroz/screens/user.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool headsenha = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: Get.height * 0.500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 70,
                    width: 80,
                    child: Image.asset(
                      "assets/images/agroz-03.png",
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ola tudo bem?", style: TextStyle(color: Colors.white))
                  ],
                ),
                Text(
                  "Vamos começar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildNome(),
          SizedBox(height: 10),
          _buildEmail(),
          SizedBox(height: 10),
          _buildFone(),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text(
              'Continuar',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Get.off(UserScreen());
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle:
                    TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  _buildNome() {
    return Container(
      height: 40,
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, color: Colors.grey, size: 20),
          hintText: 'Seu Nome',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(75)),
        ),
      ),
    );
  }

  _buildEmail() {
    return Container(
        height: 40,
        width: 250,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email, color: Colors.grey, size: 20),
            hintText: 'email',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(26),
                borderSide: BorderSide(color: Colors.greenAccent, width: 3)),
          ),
        ));
  }

  _buildFone() {
    return Container(
        height: 40,
        width: 250,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.security, color: Colors.grey, size: 20),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  headsenha = !headsenha;
                });
              },
              icon: Icon(headsenha ? Icons.visibility_off : Icons.visibility),
            ),
            hintText: 'telefone',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(26),
                borderSide: BorderSide(color: Colors.greenAccent, width: 3)),
          ),
        ));
  }
}
