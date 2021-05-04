import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatLich extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DatLich();
  }

}

 class _DatLich extends State<DatLich>{


   
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Select date',
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

 }