import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new FlutterMap(
      options: new MapOptions(
          center: new LatLng(28.7533415, 77.4966278), minZoom: 15.0),
      layers: [
        new TileLayerOptions(
            urlTemplate: "https://a.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        new MarkerLayerOptions(markers: [
          new Marker(
              width: 45.0,
              height: 45.0,
              point: new LatLng(28.7533415, 77.4966278),
              builder: (context) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.red[600],
                      iconSize: 45.0,
                      onPressed: () => _onButtonPressed(),
                    ),
                  ))
        ])
      ],
    ));
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 600,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        new Container(
            decoration: new BoxDecoration(color: Colors.blue[800]),
            child: ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text(
                  'ITS HOSPITAL',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ))),
        ListTile(leading: Icon(Icons.call), title: Text('08447753520')),
        ListTile(
            leading: Icon(Icons.location_on),
            title: Text('NH-58, Ghaziabad, Uttar Pradesh 201206')),
        ListTile(
            leading: Icon(Icons.public),
            title: Text('www.itsdentalcollege.com/')),
        ListTile(
            leading: Icon(Icons.local_hotel),
            title: Text('Rashtiya Swasthiya Bima Yojana (RSBY)')),
        ListTile(
            leading: Icon(Icons.local_hotel),
            title: Text('Employment State Insurance Scheme (ESIS)')),
        ListTile(
            leading: Icon(Icons.local_hotel),
            title: Text('Aam Aadmi Bima Yojana (AABY)')),
      ],
    );
  }
}
