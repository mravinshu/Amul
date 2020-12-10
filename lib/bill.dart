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
  int nutriw = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'KIARA DISTRICT CO-OPERATIVE MILK PRODUCERS UNION LTD; ANAND',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Village:Chidana, Distt, Sonepat',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  ' Dispatched order slip ',
                  style: TextStyle(
                      backgroundColor: Colors.black,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
          ),
          Row(
            children: [
              Text(
                '  Bill No.         ${widget.value.billnumber}',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '  Customer Name:       ${widget.value.customername}',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '  Vehicle Number:       ${widget.value.vehiclenumber}',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Container(
            height: 400,
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Nos',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Weight',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Remarks',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  )
                ]),
                if (widget.value.nutri != 0)
                  TableRow(children: [
                    Text(
                      'Nutri Rich',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '${widget.value.nutri}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ]),
                if (widget.value.milk != 0)
                  TableRow(
                    children: [
                      Text(
                        'Milk',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${widget.value.milk}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                if (widget.value.curd != 0)
                  TableRow(
                    children: [
                      Text(
                        'Curd',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${widget.value.curd}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                if (widget.value.other != 0)
                  TableRow(
                    children: [
                      Text(
                        'Other',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${widget.value.other}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Delivered By',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Expanded(
                child: Text(
                  'Signed By',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
