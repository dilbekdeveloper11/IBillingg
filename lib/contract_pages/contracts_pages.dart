import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/app_bar_pages.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        searchpage: "search",
        filterPage: "filter",
        text: "Contracts",
      ).build(context),
      body: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: getH(233),
            backgroundColor: Colors.black,
            flexibleSpace: Column(
              children: [
                CalendarAgenda(
                  appbar: false,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 140)),
                  lastDate: DateTime.now().add(const Duration(days: 4)),
                  onDateSelected: (date) {
                    print(date);
                  },
                ),
                SizedBox(height: getH(32)),
                Padding(
                  padding: EdgeInsets.only(
                    left: getW(16),
                  ),
                  child: Row(
                    children: [
                      Widgets.cyanContainer(
                          text: "Contracts",
                          height: 33,
                          width: 92,
                          opacity: 1,
                          titleColor: Colores.whiteColor),
                      SizedBox(width: getW(28)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Invoice",
                          style: TextStyle(
                            fontSize: getH(15),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: getH(150)),
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
                        ntitle: "??? 154",
                        height: 21,
                        width: 49,
                        colors: const Color(0xff49B7A5),
                        opacity: 0.15,
                        smallTitle: "Paid",
                        smallTitleColor: const Color(0xff49B7A5),
                        ismi: "Yoldoshova Ziyoda",
                        amount: "1,200,000 UZS",
                        lastInvoice: "??? 156",
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