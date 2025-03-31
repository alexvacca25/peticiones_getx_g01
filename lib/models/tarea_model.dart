class TareaModel{
final int? id;
final String nombre;
final String detalle;
final String estado;


TareaModel({
  this.id,
  required this.nombre,
  required this.detalle,
  this.estado='pendiente'
});

factory TareaModel.vacca(Map<String, dynamic> json){
  return TareaModel(
    id: json['id'],
    nombre: json['nombre'], 
    detalle: json['detalle'],
    estado: json['estado']
    );
}

Map<String, dynamic> toJson() =>{
  if(id!=null) 'id':id,
  'nombre':nombre,
  'detalle':detalle,
  'estado':estado

};





}