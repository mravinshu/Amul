import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amul/home.dart';

class Bill extends StatefulWidget {
  final Variables value;
  Bill({Key key, this.value}) : super(key: key);
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://raw.githubusercontent.com/mravinshu/Amul/main/asset/Screenshot%202020-12-02%20165924.png"),
              ),
            ),
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Container(
                          height: 205,
                        ),
                      ),
                      Text(
                        '                              ${widget.value.billnumber}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '                                                         ${widget.value.customername}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '                                                         ${widget.value.vehiclenumber}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
