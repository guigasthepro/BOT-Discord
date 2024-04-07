import 'package:equatable/equatable.dart';

class ParkType extends Equatable{
  final int idParkType;
  final String parkTypeName;

  const ParkType(this.idParkType, this.parkTypeName);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}