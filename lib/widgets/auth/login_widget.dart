
import 'package:drive_assist/widgets/auth/signup.dart';
import 'package:flutter/material.dart';

import '../home/HOME.dart';
import '../home/homepage_VehicleIssue.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String responseText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.car_repair,
              color: Colors.blue,
              size: 124.0,
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
                      Text("Login"),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Username',
                        ),
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
                      ElevatedButton(
                        onPressed: () async {
                          //Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const homepageservices()),
                          );
                          setState(() {});
                        },
                        child: Text("Login"),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.indigo)),
                      )
                    ]),
              ),
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
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
                MaterialPageRoute(builder: (context) => const signup()),
              );
              setState(() {});
            },
            child: Text("CreateAccount"),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.indigo)),
          ),
        ],

      ),
    );
  }
}
