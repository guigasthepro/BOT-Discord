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
  final String workingHours;
  final double tarifa;

  final double latitute;
  final double longidute;

  final List<Incident> incidentList;

  const Park(
      this.idPark,
      this.parkName,
      this.partType,
      this.maxCapacity,
      this.currentCapacity,
      this.lastUpdate,
      this.workingHours,
      this.latitute,
      this.longidute,
      this.tarifa,
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
        DateTime.now().millisecondsSinceEpoch,
        "1-7",// lastUpdate
        40.7128, // latitude
        -74.0060, // longitude
        1,
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
        "1-7",
        34.0522, // latitude
        -118.2437, // longitude
        1,
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
        "1-7",
        51.5074, // latitude
        -0.1278, // longitude
        1,
        [], // incidentList
      ),
    );

    // Adicione quantos parques desejar

    return dummyParks;
  }

}
