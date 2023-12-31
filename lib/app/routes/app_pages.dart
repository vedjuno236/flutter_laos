import 'package:get/get.dart';
// import 'package:mytsel/app/modules/bus/views/bus_view.dart';
// import 'package:mytsel/app/modules/bus/bindings/bus_binding.dart';

import 'package:mytsel/app/modules/home/bindings/home_binding.dart';
import 'package:mytsel/app/modules/home/views/home_view.dart';
import 'package:mytsel/app/modules/login/bindings/login_binding.dart';
import 'package:mytsel/app/modules/login/views/login_view.dart';
import 'package:mytsel/app/modules/search_form/views/search_form.dart';
import 'package:mytsel/app/modules/search_to/views/search_to.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.Search_to,
      page: () => SearchTo(),
      //   // binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.Search_form,
      page: () => SearchForm(),
    ),
  ];
}
