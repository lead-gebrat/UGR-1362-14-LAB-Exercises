import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Tracker(),
  ));
}

class Tracker extends StatelessWidget {
  const Tracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.question_mark_rounded),
                SizedBox(width: 30),
                Text('Tracker'),
                SizedBox(width: 30),
                Icon(Icons.notification_add),
                Icon(Icons.settings)
              ],
            )),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('./assets/puppy.jpg'),
                ),
                Column(children: <Widget>[
                  Text(
                    'Robert Steven',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(children: <Widget>[
                    Icon(Icons.car_crash),
                    Text('09984746463|98373663646')
                  ])
                ]),
                SizedBox(
                  width: 50,
                ),
                Text('Log Out')
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 200,
              ),
              color: Colors.blue,
              child: Text('Online| Battery:90%'),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.map),
                            Text('Map'),
                            Text('All Devices')
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text('Live Location'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.history),
                            Text('History Location'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.circle),
                            Text('set geoforce'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.info),
                            Text('Detain info'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.edit),
                            Text('edit device'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.phone),
                            Text('Change Device'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.key),
                            Text('Disable menu'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.hourglass_bottom),
                            Text('Set Gps'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.restart_alt),
                            Text('Restart Devices')
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.battery_charging_full),
                            Text('Powersaving mode'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.thunderstorm),
                            Text('Normal Mode'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.power_off),
                            Text('Shutdown mode'),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.note_add),
                            Text('Device Command '),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.mail),
                            Text('cnstact us'),
                          ],
                        ),
                      )
                    ],
                  ),
                ])
          ],
        ));
  }
}
