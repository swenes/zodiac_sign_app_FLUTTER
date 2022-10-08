import 'package:e_commerce/route/route_generator.dart';
import 'package:e_commerce/ui/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
