import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String location = "Undefined";
  bool loading = true;

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
            child: FutureBuilder<Position>(
              future: _getGeoLocationPosition(),
              builder:
                  (BuildContext context, AsyncSnapshot<Position> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(),
                        SizedBox(width: double.infinity, height: 20),
                        Text('Loading Location...'),
                      ],
                    ),
                  );
                } else {
                  if (snapshot.hasError)
                    return Center(child: Text('Error: ${snapshot.error}'));
                  else {
                    if (snapshot.data is Position) {
                      log("Fetched Location Data using AsyncSnapshot");
                      dynamic position = snapshot.data;
                      location =
                          'Lat: ${position.latitude}, Long: ${position.longitude}';
                      loading = false;
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        if (loading) ...[
                          CircularProgressIndicator(),
                          SizedBox(width: double.infinity, height: 20),
                          Text('Loading Location...'),
                        ] else ...[
                          Text(location),
                          ElevatedButton(
                            onPressed: () async {
                              setState(() {});
                            },
                            child: Text("Get Location"),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo)),
                          ),
                        ]
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

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
