import 'package:amul/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amul',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String password = 'amul2020';
  String _password;
  String username = 'harry';
  String _username;
  void validate() {
    if (formkey.currentState.validate()) {
      print("Validated");
    } else {
      print('Not Validated');
    }
  }

  String validatepass(value) {
    if (value.isEmpty) {
      return "Required";
    } else {
      if (value == password) {
        return "";
      } else {
        return "Not Correct";
      }
    }
  }

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
            child: Form(
              key: formkey,
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
                  TextFormField(
                    maxLength: 25,
                    decoration: const InputDecoration(
                        labelText: 'Username',
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock),
                        )),
                    onChanged: (String value) {
                      _username = value;
                    },
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
                    validator: validatepass,
                    onChanged: (String value) {
                      _password = value;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: CupertinoButton.filled(
                      child: Text('Login'),
                      onPressed: () {
                        if (password == _password) {
                          if (username == _username) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage1()));
                          }
                        } else {
                          return "Wrong Password";
                        }
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
