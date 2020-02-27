import 'package:flutter/material.dart';
import 'package:taxi/models/order.dart';
import 'package:intl/intl.dart';

class DriverOrdersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DriverOrdersScreenState();
  }
}

class DriverOrdersScreenState extends State {
  List<Order> orders = List();

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
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ушарал"),
      ),
      body: ListView.builder(
          itemCount: orders != null ? orders.length : 0,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: CustomListItem(orders[index]),
            );
          }),
    );
  }
}

class CustomListItem extends StatelessWidget {
  final Order order;

  const CustomListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.grey[100],
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
                Image.asset("res/images/way.png"),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
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
