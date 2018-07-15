import 'package:flutter/material.dart';
import 'package:step_marks/fragment/qrScanner.dart';
import 'package:step_marks/fragment/tripPlanner.dart';
import 'package:step_marks/fragment/achievements.dart';
import 'package:step_marks/fragment/timeLine.dart';
import 'package:step_marks/fragment/map.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Map View", Icons.location_on),
    new DrawerItem("QR Scanner", Icons.camera),
    new DrawerItem("Trip Planner", Icons.event_available),
    new DrawerItem("Timeline", Icons.timeline),
    new DrawerItem("Achievements", Icons.star_half),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return new SecondFragment();
      case 2:
        return new ThirdFragment();
      case 3:
        return new FourthFragment();
      case 4:
        return new FifthFragment();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(250, 48, 51, 107),
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: Text("StepMarks.com",
              style: new TextStyle(
                fontWeight: FontWeight.w800, fontSize: 22.0, color: Colors.white
              ),),
              decoration: BoxDecoration(
                  color: Color.fromARGB(250, 48, 51, 107)
              ),
            ),
            new Column(children: drawerOptions),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}