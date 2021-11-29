import 'package:app_agroz/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.off(LoginScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child:Image.asset("assets/images/splash.jpg",fit: BoxFit.fill,)),
      ),
    );
  }
}