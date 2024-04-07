import 'package:equatable/equatable.dart';

import 'incident.dart';
import 'parkType.dart';

class Park extends Equatable{
  final int idPark;
  final String parkName;
  final ParkType partType;

  final int maxCapacity;
  final int currentCapacity;
  final int lastUpdate;

  final double latitute;
  final double longidute;

  final List<incident> incidentList;

  const Park(
      this.idPark,
      this.parkName,
      this.partType,
      this.maxCapacity,
      this.currentCapacity,
      this.lastUpdate,
      this.latitute,
      this.longidute,
      this.incidentList);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  static List<Park> generateDummyParks() {
    List<Park> dummyParks = [];

    // Adicione alguns parques de exemplo
    dummyParks.add(
      Park(
        1,
        'Parque Um',
        ParkType(1, "sub"),
        100, // maxCapacity
        50,  // currentCapacity
        DateTime.now().millisecondsSinceEpoch, // lastUpdate
        40.7128, // latitude
        -74.0060, // longitude
        [], // incidentList
      ),
    );

    dummyParks.add(
      Park(
        2,
        'Parque Dois',
        ParkType(1, "sub"),
        200, // maxCapacity
        100,  // currentCapacity
        DateTime.now().millisecondsSinceEpoch, // lastUpdate
        34.0522, // latitude
        -118.2437, // longitude
        [], // incidentList
      ),
    );

    dummyParks.add(
      Park(
        3,
        'Parque Três',
        ParkType(1, "sub"),
        150, // maxCapacity
        75,  // currentCapacity
        DateTime.now().millisecondsSinceEpoch, // lastUpdate
        51.5074, // latitude
        -0.1278, // longitude
        [], // incidentList
      ),
    );

    // Adicione quantos parques desejar

    return dummyParks;
  }

}
