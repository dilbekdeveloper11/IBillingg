import 'package:flutter/material.dart';
import 'package:ibilling/contract_pages/contract_pages_one.dart';

class RouteHelper {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: ((context) =>  ContractPageOne()));
    }
  }
}
