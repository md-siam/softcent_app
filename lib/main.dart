import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softcent_app/bottom_nav_bar.dart';
import 'package:softcent_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Softcent App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const BottomNavBar(),
    );
  }
}
