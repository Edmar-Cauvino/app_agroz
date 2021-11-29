import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
              height: 30,
              width: 35,
              child: Image.asset(
                "assets/images/agroz-03.png",
              )),
          Spacer(),
          Container(
              height: 30,
              width: 35,
              child: Image.asset(
                "assets/images/galery.png",
              )),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 30,
              width: 35,
              child: Image.asset(
                "assets/images/carrinho.png",
              )),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 30,
              width: 35,
              child: Image.asset(
                "assets/images/search.png",
              )),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 30,
              width: 35,
              child: Image.asset(
                "assets/images/message.png",
              )),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                 
                  height: MediaQuery.of(context).size.height * 0.880 - 18,
                  child: Flexible(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) => 
                      Container(
            
              child: Column(
                children: [
                   Container(
              color: Colors.grey,
              width: double.infinity,
              height: 15,
             ),
             Container(
              width: double.infinity,
              height: Get.height * 0.25,
              child: Image.network(
                "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia16043/caracteristicas-cavalos-saudaveis-artigos-cursos-cpt.jpg",
                fit: BoxFit.fill,
              ),
             ),
             Container(
              color: Colors.black87,
              width: double.infinity,
              height: Get.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/star.png"),
                          radius: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "222",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/star2.png"),
                        radius: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 70,
                          width: 220,
                          child: Text(
                            "hjjdkjkj jjkjjklkiop jjjjjj   iiiii  ttttt rffffff fffffffff ",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
                ],
              ),
            )
                     
                      
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

 /* Container(
                height: MediaQuery.of(context).size.height * 0.880 - 18,
              child: Column(
                children: [
                   Container(
              color: Colors.grey,
              width: double.infinity,
              height: 15,
             ),
             Container(
              width: double.infinity,
              height: Get.height * 0.25,
              child: Image.network(
                "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia16043/caracteristicas-cavalos-saudaveis-artigos-cursos-cpt.jpg",
                fit: BoxFit.fill,
              ),
             ),
             Container(
              color: Colors.grey,
              width: double.infinity,
              height: Get.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/star.png"),
                        radius: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "222",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/star2.png"),
                        radius: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 70,
                          width: 220,
                          child: Text(
                            "hjjdkjkj jjkjjklkiop jjjjjj   iiiii  ttttt rffffff fffffffff ",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
                ],
              ),
            )*/