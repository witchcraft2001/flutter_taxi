import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:taxi/models/order.dart';

class DriverOrderDetailScreen extends StatelessWidget {
  Order _order;

  DriverOrderDetailScreen(this._order);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("res/images/ic_clock.png"),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(DateFormat('kk:mm').format(_order.when),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0)),
                      ),
                    ),
                    Image.asset("res/images/ic_phone_green.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(_order.phone,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset("res/images/ic_way_big.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(_order.fromStreet,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0)),
                            Text("д. ${_order.fromBuild} под. ${_order.fromPorch}",
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15.0)),
                            Text("${_order.toStreet}, д. ${_order.toBuild}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.grey[300])),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_order.comment),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset("res/images/ic_money.png"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("${_order.sum} тн",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16.0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.0,
            child: Container(
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.amber),
                  color: Colors.amber),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text("Отмена",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Взять",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
