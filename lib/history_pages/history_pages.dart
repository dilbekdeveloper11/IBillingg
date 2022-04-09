import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/app_bar_pages.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class HistoryPages extends StatelessWidget {
  const HistoryPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(text: "History").build(context),
      body: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: getH(109),
            backgroundColor: Colors.black,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(
                top: getH(20),
                left: getW(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                      fontSize: getH(15),
                      color: Colores.greyColor,
                    ),
                  ),
                  SizedBox(height: getH(16)),
                  Row(
                    children: [
                      Widgets.calendarCurrent(context: context),
                      SizedBox(
                        width: getH(12),
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                          fontSize: getH(40),
                          color: Colores.whiteFFFF,
                        ),
                      ),
                      SizedBox(width: getW(12)),
                      Widgets.calendarCurrent(context: context, title: "To"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: getH(150),
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: Colors.black,
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
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
                  ),
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
