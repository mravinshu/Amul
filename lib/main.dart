import 'package:amul/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  String _password = 'Amul2020';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Amul',
            style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontFamily: 'Fette',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 20,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Tatu',
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: TextEditingController(),
                    maxLength: 25,
                    decoration: InputDecoration(
                      icon: const Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.person),
                      ),
                      hintText: 'Enter username',
                    ),
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Tatu',
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: CupertinoButton.filled(
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage1()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
