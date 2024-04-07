import 'package:emelpark/createIncident/view/createIncident.dart';
import 'package:emelpark/dashboard/view/dashboard.dart';
import 'package:emelpark/models/park.dart';
import 'package:emelpark/parkList/view/parkList.dart';
import 'package:emelpark/parkMap/view/parkMap.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  List<Park> parks = Park.generateDummyParks();

  int currentPageIndex = 0;

  late bool isVisible = false;

  String getTitleForIndex(int index) {
    // You can implement your logic here to determine the title based on the index
    // For example, a simple switch statement or if-else block
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Lista de Parques';
      case 2:
        return 'Mapa Parques';
      case 3:
        return 'Registar Incidente';
    // Add more cases as needed
      default:
        return 'Default Title';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: getTitleForIndex(currentPageIndex)),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        backgroundColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Theme.of(context).colorScheme.onBackground,
        selectedIndex: currentPageIndex,

        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.dashboard, color: Theme.of(context).colorScheme.background,),
            icon: Icon(Icons.home_outlined, color: Theme.of(context).colorScheme.background,),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.app_registration, color: Theme.of(context).colorScheme.background,),
            icon: Icon(Icons.app_registration_outlined, color: Theme.of(context).colorScheme.background,),
            label: 'Lista',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.dashboard, color: Theme.of(context).colorScheme.background,),
            icon: Icon(Icons.dashboard_outlined, color: Theme.of(context).colorScheme.background,),
            label: 'Mapa',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month, color: Theme.of(context).colorScheme.background,),
            icon: Icon(Icons.calendar_month_outlined, color: Theme.of(context).colorScheme.background,),
            label: 'Incidente',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Dashboard(),

        /// Notifications page
        ParkList(parks: parks),

        /// Messages page
        parkMap(),

        /// Home page
        createIncident(),

      ][currentPageIndex],
    );
  }
}