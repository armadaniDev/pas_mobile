import 'package:pas_mobile/menu/home_page.dart';
import 'package:pas_mobile/menu/feat_page.dart';
import 'package:pas_mobile/menu/profile_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listpages = [HomePage(), FeatPage(), ProfilePage()];
}
