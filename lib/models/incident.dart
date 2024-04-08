import 'package:equatable/equatable.dart';


class Incident extends Equatable {
  final int idIncident;
  final String titulo;
  final String descricao;
  final int gravidade;

  const Incident(this.idIncident,this.titulo,this.descricao,this.gravidade);



  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}