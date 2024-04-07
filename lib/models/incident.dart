import 'package:equatable/equatable.dart';


class incident extends Equatable {
  final int idIncident;
  final String titulo;
  final String descricao;
  final int gravidade;

  const incident(this.idIncident,this.titulo,this.descricao,this.gravidade);



  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}