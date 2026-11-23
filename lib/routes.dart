import 'package:get/route_manager.dart';
import 'package:pas_mobile/pages/detail_makanan_page.dart';
import 'package:pas_mobile/pages/login_page.dart';
import 'package:pas_mobile/pages/main_menu.dart';

class Routes {
  static const String login_page = "/login_page";
  static const String main_menu = "/main_menu";
  static const String detail_makanan = "/detail_makanan";

  static final myPages = [
    GetPage(name: login_page, page: () => LoginPage()),
    GetPage(name: main_menu, page: () => MainMenu()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
  ];
}
