import 'package:flutter/material.dart';
import 'package:ibilling/Router/router.dart';
import 'package:ibilling/contract_pages/contract_pages_one.dart';
import 'package:ibilling/contract_pages/filter_pages.dart';
import 'package:ibilling/contract_pages/search_page.dart';
import 'package:ibilling/create_contracts_pages/invoce_page.dart';
import 'package:ibilling/history_pages/history_pages.dart';
import 'package:ibilling/profile_pages/profil_pages.dart';
import 'package:ibilling/saved_pages/saved_pages.dart';
import 'package:ibilling/single_pages/single_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteHelper().onGenerateRoute,
    );
  }
}
