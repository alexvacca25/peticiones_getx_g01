import 'package:get/get.dart';
import 'package:peticiones_getx_g01/models/tarea_model.dart';
import 'package:peticiones_getx_g01/services/tarea_services.dart';

class TareaController extends GetxController {
  final TareaService _service = TareaService();

  final RxList<TareaModel> tareas = <TareaModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    consultaTareas();
  }

  Future<void> consultaTareas() async {
    try {
      final listadoTareas = await _service.getTareas();
      tareas.value = listadoTareas;
      print(tareas);
    } catch (e) {
      print('Error en controlador $e');
    }
  }
}
