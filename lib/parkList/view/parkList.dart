import 'dart:async';
import 'package:emelpark/parkDetail/view/parkDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emelpark/models/park.dart';
class ParkList extends StatefulWidget{

  final List<Park> parks;

  ParkList({required this.parks});

  State<ParkList> createState() => _MyParkListState();

}

class _MyParkListState extends State<ParkList>{
  late List<Park> _parks;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _parks = widget.parks;
    // Update the park list every minute
    _timer = Timer.periodic(Duration(minutes: 1), (Timer t) {
      // Replace this with your logic to fetch updated park data
      // For now, let's just pretend the parks got updated somehow
      setState(() {
        _parks = widget.parks;
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: _parks.length,
        itemBuilder: (context, index) {
          final park = _parks[index];
          return ListTile(
            leading: Icon(Icons.local_parking),
            title: Text(park.parkName.toString()),
            subtitle: Text('Tipo: ${park.partType.idParkType}, Capacidade: ${park.currentCapacity}/${park.maxCapacity}, Última atualização: ${park.lastUpdate}'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParkDetail(park: park)),
              );
            },
            // Add more information as needed
          );
        },
      ),
    );

  }
}