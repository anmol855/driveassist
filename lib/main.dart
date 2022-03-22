import 'package:flutter/material.dart';

import 'widgets/auth/login_widget.dart';
import 'widgets/home/location_widget.dart';
import 'widgets/home/internet_widget.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(
              text: "Drive",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              children: <TextSpan>[
                const TextSpan(
                  text: "Assist",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
            child: Column(children: <Widget>[
              LoginWidget(),
             // LocationWidget(),
              //InternetWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}
