import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Order(),
  ));
}

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.arrow_back),
              Text(
                'Order Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 180)
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color: Colors.lightBlue[50],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(Icons.check),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Completed'),
                                Text('Order Completed 24 jdjdhd '),
                              ],
                            ),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_back_ios)
                          ],
                        )),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text('Order Id'), Text('#1537389')]),
                    SizedBox(height: 10),
                    Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text('Order Id'), Text('#1537389')]),
                    SizedBox(height: 10)
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Purchased Items',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('../assets/puppy.jpg'),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Blue t-shirt',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text('Size: L'),
                                Text(
                                  '50.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(height: 30),
                              Text('Color: yelow'),
                              Text('qty:1')
                            ],
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('../assets/puppy.jpg'),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Blue t-shirt',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text('Size: L'),
                                Text(
                                  '50.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 30),
                              Text('Color: yelow'),
                              Text('qty:1')
                            ],
                          )
                        ])
                  ],
                ),
              ),
              Card(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Shipping Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text('Name'), Text('Jacob Jones')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Phone Numbere'),
                      Text('09876433578')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Adress'),
                      Text('hdhhyeeykdjfj09999 38744 sjjfdhfd')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text('Shipment'), Text('Economy')],
                  ),
                ],
              )),
              Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text(
                      'Payment Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Payment Method'),
                        Text(
                          'Cah on delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ]))
            ],
          ),
        ));
  }
}
