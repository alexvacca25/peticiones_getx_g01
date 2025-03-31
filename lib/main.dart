import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones_getx_g01/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manejo de Peticiones',
      debugShowCheckedModeBanner: false,
      initialRoute: '/tareas',
      getPages: AppRoutes.routes,
    );
  }
}
