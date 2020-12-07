import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amul/bill.dart';

class Variables {
  final String customername, vehiclenumber, billnumber;
  final int milk,curd,nutri,other,total;
  const Variables({this.customername, this.vehiclenumber, this.billnumber,this.milk,this.nutri,this.curd,this.other,this.total});
}

class Homepage1 extends StatefulWidget {
  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  var _customernamecontroller = new TextEditingController();
  var _vehiclenumbercontroller = new TextEditingController();
  var _billnumbercontroller = new TextEditingController();
  var _name = ' Harwinder Singh';
  int nutri = 0;
  int amount;
  int milk = 0;
  String dropdownValue;
  int curd = 0;
  int total = 0;
  int other = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Amul Billing Management system',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  'Welcome,$_name',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('List item'),
            ),
            ListTile(
              title: Text('List item'),
            ),
            ListTile(
              title: Text('List item'),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        child: Column(
          children: [
            Card(
              shadowColor: Colors.red,
              child: Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text(
                      'Customer Details',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      maxLength: 25,
                      decoration: InputDecoration(
                          labelText: 'Username',
                          icon: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Icon(Icons.person),
                          )),
                      controller: _customernamecontroller,
                    ),
                    TextFormField(
                      maxLength: 25,
                      decoration: InputDecoration(
                          labelText: 'Vehicle Number',
                          icon: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Icon(Icons.directions_bus),
                          )),
                      controller: _vehiclenumbercontroller,
                    ),
                    TextFormField(
                        maxLength: 25,
                        decoration: InputDecoration(
                            labelText: 'Bill Number',
                            icon: Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Icon(Icons.monetization_on),
                            )),
                        controller: _billnumbercontroller),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Products',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tatu',
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: Icon(Icons.arrow_downward),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      underline: Container(
                                        height: 2,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      items: <String>[
                                        'Nutri Rich',
                                        'Milk',
                                        'Curd',
                                        'Other'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    CupertinoButton(
                                      child: Icon(
                                        Icons.add,
                                      ),
                                      onPressed: () {
                                        if (dropdownValue == 'Nutri Rich') {
                                          nutri = amount;

                                        }
                                        if (dropdownValue == 'Milk') {
                                          milk = amount;

                                        }
                                        if (dropdownValue == 'Curd') {
                                          curd = amount;

                                        }
                                        if (dropdownValue == 'Other') {
                                          other = amount;
                                        }
                                      },
                                    )
                                  ],
                                ),
                                TextFormField(
                                  maxLength: 25,
                                  decoration: InputDecoration(
                                      labelText: 'Amount',
                                      icon: Padding(
                                        padding: EdgeInsets.only(top: 15.0),
                                        child: Icon(Icons.backup),
                                      )),
                                  onChanged: (String value) {
                                    amount = int.parse(value);
                                  },
                                ),
                                CupertinoButton(

                                  color: Colors.red,
                                  child: Text('Total'),
                                  onPressed: () {
                                    if (dropdownValue == 'Nutri Rich') {
                                      nutri = amount;
                                    }
                                    if (dropdownValue == 'Milk') {
                                      milk = amount;
                                    }
                                    if (dropdownValue == 'Curd') {
                                      curd = amount;
                                    }
                                    if (dropdownValue == 'Other') {
                                      other = amount;
                                    }
                                    setState(() {
                                      total = nutri + milk + curd+ other;

                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Table(
                                border: TableBorder.all(),
                                children: [
                                  TableRow(children: [
                                    Text('Product'),
                                    Text('Amount'),
                                  ]),

                                  TableRow(children: [
                                    Text('Nutri Rich'),
                                    Text('$nutri'),
                                  ]),

                                  TableRow(children: [
                                    Text('Milk'),
                                    Text('$milk'),
                                  ]),

                                  TableRow(children: [
                                    Text('Curd'),
                                    Text('$curd'),
                                  ]),

                                  TableRow(children: [

                                    Text('Others'),
                                    Text('$other'),
                                  ]),
                                ],
                              ),
                              Text(
                                'Total Weight = $total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              CupertinoButton(

                                  color: Colors.red,
                                  child: Text('Bill'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Bill(
                                              value: Variables(
                                                customername: _customernamecontroller.text,
                                                vehiclenumber: _vehiclenumbercontroller.text,
                                                billnumber: _billnumbercontroller.text,
                                                milk: milk,
                                                curd: curd,
                                                nutri: nutri,
                                                other: other,
                                                total: total,

                                              )),
                                        ));
                                  }),
                            ],

                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return MaterialApp(
      home: scaffold,
    );
  }
}
