// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/greek/museum.dart';

class mapshelter extends StatefulWidget {
  const mapshelter({super.key});

  @override
  State<mapshelter> createState() => _MAPState();
}

//AIzaSyC7qmOS9gojpdcmpchvuQ_ToBRjxNKtJq8
class _MAPState extends State<mapshelter> {
  
  final Completer<GoogleMapController> _mapcontroller = Completer();
  static const CameraPosition _center = CameraPosition(
      target: LatLng(31.198403361739256, 29.906480257856842), zoom: 17);
  final List<Marker> _marker = [];
  final List<Marker> _branch = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(31.198403361739256, 29.906480257856842),
        infoWindow: InfoWindow(title: 'testing')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(45.511100, -122.677433),
        infoWindow: InfoWindow(title: 'testing', snippet: 'testing')),
  ];
  static final Polyline _kPolyline = Polyline(
    polylineId: PolylineId("_kPolyline"),
    points: [
      LatLng(45.521563, -122.677433),
      LatLng(45.511100, -122.677433),
    ],
    width: 5,
  );
  @override
  void initState() {
    super.initState();
    _marker.addAll(_branch);
  }

  @override
  Widget build(BuildContext context) {
    
    debugShowCheckedModeBanner:false;

    return MaterialApp(
      routes: {
        "museum":(context) => museum(),
      },
      home: Builder(
        builder: (context) {
          return Scaffold(
            // appBar: AppBar(
            //   title: const Text(''),
            //   backgroundColor: Colors.blueGrey,
          
            // ),
            body: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.terrain,
                  markers: Set<Marker>.of(_marker),
                  onMapCreated: (GoogleMapController controller) {
                    _mapcontroller.complete(controller);
                  },
                  polylines: {
                    _kPolyline,
                  },
                  initialCameraPosition: _center,
                ),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "museum");
          
                      },
                      child: Positioned(
                        left: 5,
                        // right: 10,
                        bottom:5,
                        child: Icon(CupertinoIcons.back,
                            color: Colors.black, size: 30),
                      ),
                    )),
              ],
            ),
          );
        }
      ),
    );
  }
}
