import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/test_response.dart';

class InternetWidget extends StatefulWidget {
  const InternetWidget({Key? key}) : super(key: key);

  @override
  _InternetWidgetState createState() => _InternetWidgetState();
}

class _InternetWidgetState extends State<InternetWidget> {
  String responseText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Card(
        color: Colors.white,
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: FutureBuilder<TestResponse>(
              future: _fetchResponse(),
              builder:
                  (BuildContext context, AsyncSnapshot<TestResponse> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(),
                        SizedBox(width: double.infinity, height: 20),
                        Text('Loading Response...'),
                      ],
                    ),
                  );
                } else {
                  if (snapshot.hasError)
                    return Center(child: Text('Error: ${snapshot.error}'));
                  else {
                    if (snapshot.data is TestResponse) {
                      log("Fetched Internet Data using AsyncSnapshot");
                      dynamic response = snapshot.data;
                      responseText =
                          '${response.message}\nStatus: ${response.status}';
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(responseText),
                        ElevatedButton(
                          onPressed: () async {
                            setState(() {});
                          },
                          child: Text("Get Response"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo)),
                        ),
                      ],
                    );
                  }
                }
              },
            ),
          ),
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Future<TestResponse> _fetchResponse() async {
    final response = await http
        .get(Uri.parse('https://da.apoorvpal.in/api/'));

    if (response.statusCode == 200) {
      return TestResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load response!');
    }
  }
}
