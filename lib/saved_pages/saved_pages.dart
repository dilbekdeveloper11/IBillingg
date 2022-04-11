import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/app_bar_pages.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class SavedPages extends StatelessWidget {
  const SavedPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(text: "Saved",searchpage: "search",filterPage: "filter",).build(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: getW(22), top: getH(12)),
            child: Container(
              color: Colors.black,
              child: Widgets.Card(
                ntitle: "№ 154",
                height: 21,
                width: 49,
                colors: const Color(0xff49B7A5),
                opacity: 0.15,
                smallTitle: "Paid",
                smallTitleColor: const Color(0xff49B7A5),
                ismi: "Yoldoshova Ziyoda",
                amount: "1,200,000 UZS",
                lastInvoice: "№ 156",
                number: "6",
                date: "31.01.2021",
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
