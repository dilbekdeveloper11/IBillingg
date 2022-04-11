import 'package:flutter/material.dart';
import 'package:ibilling/contract_pages/contract_pages_one.dart';
import 'package:ibilling/contract_pages/filter_pages.dart';
import 'package:ibilling/contract_pages/search_page.dart';

class RouteHelper {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: ((context) => ContractPageOne()),
        );
      case "/search":
        return MaterialPageRoute(
          builder: ((context) =>const SearchPage()),
        );
      case "/filter":
        return MaterialPageRoute(
          builder: ((context) => const FilterPage()),
        );
    }
  }
}
