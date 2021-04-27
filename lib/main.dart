import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xffb74093),
      home: Scaffold(
        backgroundColor: Color(0xffb74093),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff7b1fa2),
          title: Text(
            "Kripto Bilgilendirme",
            style: TextStyle(),
          ),
        ),
        body: SafeArea(child: MyHomePage()),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> answers = [
    'Bitcoin : Günümüzdeki en değerli sanal para birimidir',
    'Ethereum :Miningciler piyasada ekran kartı bırakmadı be abim',
    'Dogecoin:  Arkadasında Elon Musakka abim var doge fırlıycak, marsın para birimi olacak. Bu arada Ytd'
  ];
  int answers_index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 80,
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        answers_index = 0;
                      });

                      print("bitcoin tıklandı");
                    },
                    child: Expanded(
                      flex: 4,
                      child: Image.asset(
                        "assets/images/bitcoin.jpg",
                      ),
                    ),
                  ),
                  Text("Bitcoin"),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            child: Divider(
              color: Colors.orangeAccent,
              height: 10,
              thickness: 0.9,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        answers_index = 1;
                      });

                      print("ethereum tıklandı");
                    },
                    child: Expanded(
                      flex: 4,
                      child: Image.asset("assets/images/ethereum.jpg"),
                    ),
                  ),
                  Text("Ethereum"),
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            child: Divider(
              color: Colors.orangeAccent,
              height: 10,
              thickness: 0.9,
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        answers_index = 2;
                      });

                      print("dogecoin tıklandı");
                    },
                    child: Expanded(
                      flex: 4,
                      child: Image.asset("assets/images/dogecoin.jpg"),
                    ),
                  ),
                  Text("Dogecoin"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(
                answers[answers_index],
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
