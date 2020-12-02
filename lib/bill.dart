import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amul/home.dart';

class Bill extends StatefulWidget {
  final Variables value;
  Bill({Key key, this.value}): super(key: key);
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    '${widget.value.customername}${widget.value.billnumber}${widget.value.vehiclenumber}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ))));
  }
}
