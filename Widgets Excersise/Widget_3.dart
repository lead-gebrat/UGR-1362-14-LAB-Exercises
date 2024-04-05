import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Product(),
  ));
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.arrow_back),
            Container(
                color: Colors.grey,
                child: Row(children: <Widget>[
                  Icon(Icons.search),
                  Text(
                    'Search A product',
                    style: TextStyle(fontSize: 15),
                  )
                ])),
            Row(
              children: <Widget>[
                Icon(Icons.shopping_cart),
                Icon(Icons.notifications)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            './assets/puppy.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('8.9', style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.heart_broken)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    ' loremrm ipsum loremrm ipsum loremrm ipsum loremrm ipsum loremrm ipsum loremrm ipsums',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Icon(Icons.star),
                      Text('5.0(667)|'),
                    ]),
                    Text('540 sale|'),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text('Brooklyn'),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Variant',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Size: XS'),
                    Row(
                      children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {},
                            child: Text(
                              'XS',
                              style: TextStyle(color: Colors.white),
                            )),
                        ElevatedButton(onPressed: () {}, child: Text('S')),
                        ElevatedButton(onPressed: () {}, child: Text('M')),
                        ElevatedButton(onPressed: () {}, child: Text('L')),
                        ElevatedButton(onPressed: () {}, child: Text('XL')),
                        ElevatedButton(onPressed: () {}, child: Text('XXL')),
                      ],
                    ),
                    Text('Color: Red'),
                    Row(
                      children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {},
                            child: Text(
                              'Red',
                              style: TextStyle(color: Colors.white),
                            )),
                        ElevatedButton(onPressed: () {}, child: Text('Blue')),
                        ElevatedButton(onPressed: () {}, child: Text('Green')),
                        ElevatedButton(onPressed: () {}, child: Text('Brown')),
                        ElevatedButton(onPressed: () {}, child: Text('White')),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        Icon(Icons.message),
                        OutlinedButton(
                            onPressed: () {},
                            child: Text("Add to Shopping Cart"))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
