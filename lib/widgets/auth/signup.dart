import 'package:flutter/material.dart';

import 'login_widget.dart';
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.car_repair,
                color: Colors.blue,
                size: 125.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
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
                              hintText: 'FirstName',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Lastname',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Email',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Password',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                        ),
                        Container(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'ReEnterPassword',
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                        ),
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
              child: Text("Submit"),
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