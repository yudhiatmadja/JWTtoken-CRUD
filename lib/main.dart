import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latjwt/app/modules/auth/views/login_page.dart';
import 'package:latjwt/app/modules/home/bindings/home_binding.dart';
import 'package:latjwt/app/modules/home/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
      ],
    );
  }
}
