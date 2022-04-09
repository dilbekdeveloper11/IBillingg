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
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                      fontSize: getH(14),
                      color: Colores.greyColor,
                    ),
                  ),
                  SizedBox(height: getH(16)),
                  Row(children: [Widgets.calendarCurrent(context: context)],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
