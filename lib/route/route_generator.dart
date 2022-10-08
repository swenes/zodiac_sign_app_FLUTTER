import 'package:e_commerce/model/burc.dart';
import 'package:e_commerce/ui/burc_listesi.dart';
import 'package:e_commerce/ui/selected_burc_detail.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcListesi());
      case '/selectedBurc':
        return MaterialPageRoute(builder: (context) => SelectedBurc(selectedBurc: settings.arguments as Burc));
    }
    return null;
  }
}
