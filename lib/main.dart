import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(FoodList());
}

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soapNumber = 1;
  int foodNumber = 1;
  int dessertNumber = 1;
  @override
  Widget build(BuildContext context) {
    void DefineNumber() {
      setState(() {
        soapNumber = Random().nextInt(5) + 1;
        foodNumber = Random().nextInt(5) + 1;
        dessertNumber = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: DefineNumber,
                child: Image.asset('assets/corba_$soapNumber.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed:DefineNumber,
                child: Image.asset('assets/yemek_$soapNumber.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed:DefineNumber,
                child: Image.asset('assets/tatli_$soapNumber.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
