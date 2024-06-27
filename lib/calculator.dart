import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 237, 152, 6),
          shape: CircleBorder(),
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          '0',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcbutton('AC', Colors.white),
                      calcbutton('+/-', Colors.white),
                      calcbutton('%', Colors.white),
                      calcbutton('/', Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcbutton('9', Colors.black),
                      calcbutton('8', Colors.black),
                      calcbutton('7', Colors.black),
                      calcbutton('x', Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcbutton('6', Colors.black),
                      calcbutton('5', Colors.black),
                      calcbutton('4', Colors.black),
                      calcbutton('-', Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcbutton('3', Colors.black),
                      calcbutton('2', Colors.black),
                      calcbutton('1', Colors.black),
                      calcbutton('+', Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcbutton('0', Colors.black),
                      calcbutton('.', Colors.black),
                      calcbutton('=', Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
