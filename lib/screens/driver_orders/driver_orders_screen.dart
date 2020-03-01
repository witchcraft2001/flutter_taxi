import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taxi/models/intercity_order.dart';
import 'package:taxi/models/order.dart';
import 'package:intl/intl.dart';
import 'package:taxi/screens/driver_order_detail/driver_order_detail_screen.dart';

class DriverOrdersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DriverOrdersScreenState();
  }
}

class DriverOrdersScreenState extends State {
  List<Order> orders = List();
  List<InterCityOrder> intercityOrders = List();

  @override
  void initState() {
    setState(() {
      orders.add(Order(1, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(2, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(3, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(4, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(5, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(6, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(7, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(8, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(9, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      orders.add(Order(10, "+7988*******", "ул. Куйбышева", "1", "2",
          "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      intercityOrders.add(InterCityOrder(50, "+7988*******", "Ушарал", "ул. Куйбышева",
          "1", "2", "Не Ушарал", "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      intercityOrders.add(InterCityOrder(51, "+7988*******", "Ушарал", "ул. Куйбышева",
          "1", "2", "Не Ушарал", "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
      intercityOrders.add(InterCityOrder(52, "+7988*******", "Не Ушарал", "ул. Куйбышева",
          "1", "2", "Ушарал", "ул. Кабанбай батыра", "2", "No comment", 3500.0, DateTime.now()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset("res/images/ic_nav.png"),
            ),
            Text("Ушарал"),
          ],
        ),
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              Image.asset("res/images/ic_information.png"),
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Личный счет:"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "18 398",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Text("тн"),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ListView.builder(
                itemCount: orders != null ? orders.length : 0,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) => DriverOrderDetailScreen(orders[index])
                      ));
                    },
                    child: OrderListItem(orders[index]),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("res/images/ic_nav_blue.png"),
                ),
                Text(
                  "Межгород",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: ListView.builder(
                itemCount: intercityOrders != null ? intercityOrders.length : 0,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: InterCityOrderListItem(intercityOrders[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class OrderListItem extends StatelessWidget {
  final Order order;

  const OrderListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Color(0x80f0f0f0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 55.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                    width: 42.0,
                    child: Text(DateFormat('kk:mm').format(order.when))),
                Image.asset("res/images/ic_way.png"),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(order.fromStreet),
                        Text(order.toStreet),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "${order.sum} тн",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 24.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.transparent)),
                        color: Colors.amber,
                        textColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 24.0),
                        onPressed: () {},
                        child: Text(
                          "Взять",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InterCityOrderListItem extends StatelessWidget {
  final InterCityOrder order;

  const InterCityOrderListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Color(0x80f0f0f0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 55.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                    width: 42.0,
                    child: Text(DateFormat('kk:mm').format(order.when))),
                Image.asset("res/images/ic_way.png"),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(order.fromStreet),
                        Text(order.toStreet),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "${order.sum} тн",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 24.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.transparent)),
                        color: Colors.amber,
                        textColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 24.0),
                        onPressed: () {},
                        child: Text(
                          "Взять",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
