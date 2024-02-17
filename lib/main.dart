import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  int diceno = 2;
  int dito = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'DICE',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('leeshamuupp');

                  print(diceno);
                  setState(() {
                    diceno = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset(
                  'images/dice$diceno.png',
                  height: 100,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  print('leeshamuupp');

                  print(dito);
                  setState(() {
                    dito = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset(
                  'images/dice$dito.png',
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
