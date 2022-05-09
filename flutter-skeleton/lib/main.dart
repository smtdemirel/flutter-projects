import 'package:flutter/material.dart';
import 'package:flutter_temel/screens/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(FlutterTemel());
}

class FlutterTemel extends StatefulWidget {
  @override
  State<FlutterTemel> createState() => _FlutterTemelState();
}

class _FlutterTemelState extends State<FlutterTemel> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rent Car',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}