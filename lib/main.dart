import 'package:flutter/material.dart';
import 'package:ibilling/contract_pages/contract_pages_one.dart';
import 'package:ibilling/contract_pages/filter_pages.dart';
import 'package:ibilling/contract_pages/search_page.dart';

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
      home: const FilterPage(),
    );
  }
}
