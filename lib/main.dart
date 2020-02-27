import 'package:flutter/material.dart';
import 'package:taxi/screens/driver_login/driver_login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaxiHomePage(),
    );
  }
}

class TaxiHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("res/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("res/images/logo.png"),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black87)),
                  color: Colors.transparent,
                  textColor: Colors.black87,
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DriverLoginScreen()));
                  },
                  child: Text(
                    "ВОДИТЕЛЬ",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black87)),
                  color: Colors.transparent,
                  textColor: Colors.black87,
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
                  onPressed: () {},
                  child: Text(
                    "ПАССАЖИР",
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
    );
  }
}
