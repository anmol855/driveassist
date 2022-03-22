import 'package:flutter/material.dart';

import 'homepage_VehicleIssue.dart';

class homepageservices extends StatelessWidget {
  const homepageservices({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(),
      appBar: AppBar(
        title: const Text('WELCOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.car_repair,
                color: Colors.blue,
                size: 110.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            ),
            Card(
              color: Colors.white,

              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("SERVICES OFFERED"),

                      ]),
                ),
                padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                //setState(() {});
              },
              child: Text("VehicleRepair"),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.indigo)),
            ),
          ],

        ),
      ),
    );
  }

}