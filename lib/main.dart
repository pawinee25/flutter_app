import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = "Hora App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/hora.png"),
        title: Text(widget.title),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _inputFormSection(),
            _displayPredictionSection(),
          ],
        ),
      ),
    );
  }

  _inputFormSection() {
    return Form(
      child: Padding(
        padding:
            EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0, bottom: 5.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "ชื่อ (name)",
                labelStyle: TextStyle(color: Colors.redAccent, fontSize: 22.0),
                hintText: "กรุณาป้อนชื่อ",
                helperText: "* ข้อมูลที่จะต้องป้อน",
                helperStyle: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.red),
                suffixIcon: Icon(Icons.person, color: Colors.blue),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              maxLength: 30,
            ),
            Container(
              child: Center(
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        "คำนวณ/ทำนาย",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                      elevation: 50,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _displayPredictionSection() => Text("Display Prediction Section.");
}
