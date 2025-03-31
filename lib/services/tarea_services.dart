import 'package:dio/dio.dart';
import 'package:peticiones_getx_g01/models/tarea_model.dart';

class TareaService{
final Dio _dio = Dio();
final String _baseUrl="https://nk0blh78-8000.use2.devtunnels.ms/tareas/";

Future<List<TareaModel>> getTareas() async{

try {
  final response = await _dio.get(_baseUrl);


  return (response.data as List).map((json)=>TareaModel.vacca(json)).toList();

} catch (e) {
  print('Error consultado tareas: $e');
  return [];
}




}






}