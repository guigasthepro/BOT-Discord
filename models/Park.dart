import 'Incident.dart';
import 'ParkType.dart';

class Park{
  int idPark;
  int parkName;
  ParkType partType;

  int maxCapacity;
  int currentCapacity;
  int lastUpdate;

  double latitute;
  double longidute;

  List<Incident> incidentList;

  Park(
      this.idPark,
      this.parkName,
      this.partType,
      this.maxCapacity,
      this.currentCapacity,
      this.lastUpdate,
      this.latitute,
      this.longidute,
      this.incidentList);
}