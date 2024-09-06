import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceeApp());
}

class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt biểu tượng debug
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white), // Đặt màu trắng cho tiêu đề
            ),
          ),
          backgroundColor: Colors.redAccent, // Đặt màu nền của AppBar
          elevation: 0, // Loại bỏ bóng đổ
        ),
        backgroundColor: Colors.red,
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // Giá trị từ 1 đến 6
      rightDiceNumber = Random().nextInt(6) + 1; // Giá trị từ 1 đến 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
