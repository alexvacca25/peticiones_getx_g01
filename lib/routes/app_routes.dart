import 'package:get/get.dart';
import 'package:peticiones_getx_g01/ui/tareas_add_page.dart';
import 'package:peticiones_getx_g01/ui/tareas_list_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: '/tareas',
        page: () => const ListTareasPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: '/tareas/add',
        page: () => const TareasAddPage(),
        transition: Transition.rightToLeft)
  ];
}
