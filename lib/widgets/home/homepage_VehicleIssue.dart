import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DriveAssist'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Issue Form'),
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
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'IssueType',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'CarModel',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'BrandType',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Car-Type(SUV/Sedan)',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Additional Details about Issue',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Contact Details',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                        )
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
                Navigator.pop(context);
                //Navigator.push(
                //context,
                // MaterialPageRoute(builder: (context) => const LoginWidget()),

                //setState(() {});
              },
              child: Text("Submit Details"),
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