import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_getx_g01/controllers/tarea_controller.dart';

class ListTareasPage extends StatelessWidget {
  const ListTareasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TareaController _tc = Get.put(TareaController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mis Tareas'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed('/tareas/add');
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Buscar tareas ...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: _tc.tareas.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_tc.tareas[index].nombre),
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }
}
