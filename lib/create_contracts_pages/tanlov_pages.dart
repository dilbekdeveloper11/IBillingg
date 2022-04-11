import 'package:flutter/material.dart';
import 'package:ibilling/core/app_bar_pages.dart';

class TanlovPage extends StatelessWidget {
  const TanlovPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: "Contracts",
        filterPage: "filter",
        searchpage: "search",
      ).build(context),
      
    );
  }
}
