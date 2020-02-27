import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taxi/screens/driver_orders/driver_orders_screen.dart';

class DriverLoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DriverLoginScreenState();
  }
}

class DriverLoginScreenState extends State {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDCA12),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Image.asset("res/images/logo_small.png"),
                ),
              ]),
              SizedBox(height: 32.0),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Вход для водителей",
                  style: TextStyle(fontSize: 20.0),
                )
              ]),
              SizedBox(
                height: 72.0,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Логин или телефон'),
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Пароль'),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.transparent)),
                    color: Colors.white,
                    textColor: Colors.black54,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DriverOrdersScreen()));
                    },
                    child: Text(
                      "Войти",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
