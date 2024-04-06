import 'package:emelpark/parkDetail/view/parkDetail.dart';
import 'package:flutter/material.dart';
import 'package:emelpark/createIncident/view/createIncident.dart';
import 'package:emelpark/parkList/view/parkList.dart';
import 'package:emelpark/parkMap/view/parkMap.dart';

class Dashboard extends StatefulWidget{

  State<Dashboard> createState() => _MyDashboardState();

  

}

class _MyDashboardState extends State<Dashboard> {


  int _selectedIndex = 0;

  List<Widget> _screens = [
    Dashboard(),
    createIncident(),
    ParkList(),
    parkMap(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mapa',
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}