import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "PAS MOBILE",
      initialRoute: Routes.login_page,
      getPages: Routes.myPages,
    );
  }
}
