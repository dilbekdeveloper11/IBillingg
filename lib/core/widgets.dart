import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';

class Widgets {
  static cyanContainer({required String text}) {
    return Container(
      height: getH(33),
      width: getW(92),
      decoration: BoxDecoration(
        color: const Color(0xff00A795),
        borderRadius: BorderRadius.circular(
          getH(6),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: getH(15), color: Colores.whiteFFFF),
        ),
      ),
    );
  }

  static Row Rows(
      {required String title1, required String title2, String title3 = ""}) {
    return Row(
      children: [
        Text(
          title1,
          style: TextStyle(fontSize: getH(14), color: Colores.whiteColor),
        ),
        SizedBox(width: getW(8)),
        Text(
          title2,
          style: TextStyle(fontSize: getH(14), color: Colores.greyColor),
        ),
        SizedBox(width: getW(102.64)),
        Text(
          title3,
          style: TextStyle(fontSize: getH(14), color: Colores.greyColor),
        ),
      ],
    );
  }

  static Card({
    required String ntitle,
    required double height,
    required double width,
    required Color colors,
    required double opacity,
    required String smallTitle,
    required Color smallTitleColor,
    required String ismi,
    required String amount,
    required String lastInvoice,
    required String number,
    required String date,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: getW(16)),
      child: Container(
        height: getH(148),
        width: getW(343),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getH(6),
          ),
          color: const Color(0xff2A2A2D),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: getH(12), left: getW(11.96)),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/images/Paper.svg"),
                  SizedBox(width: getW(8.26)),
                  Text(
                    ntitle,
                    style: TextStyle(
                      fontSize: getH(14),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: getW(205)),
                  Container(
                    height: getH(height),
                    width: getW(width),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getH(8),
                      ),
                      color: colors.withOpacity(opacity),
                    ),
                    child: Center(
                      child: Text(
                        smallTitle,
                        style: TextStyle(
                          fontSize: getH(12),
                          color: smallTitleColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getH(12)),
              Widgets.Rows(title1: "Fish:", title2: "Yoldoshova Ziyoda"),
              SizedBox(height: getH(8)),
              Widgets.Rows(title1: "Amount", title2: "1,200,000 UZS"),
              SizedBox(height: getH(8)),
              Widgets.Rows(title1: "Last invoice:", title2: "№ 156"),
              SizedBox(height: getH(8)),
              Widgets.Rows(
                title1: "Number of invoices:",
                title2: "6",
                title3: "31.01.2021",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Dilbek Baxtiyorov, [08/04/22 01:30]
// Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CalendarAgenda(
//             appbar: false,
//             initialDate: DateTime.now(),
//             firstDate: DateTime.now().subtract(Duration(days: 140)),
//             lastDate: DateTime.now().add(Duration(days: 4)),
//             onDateSelected: (date) {
//               print(date);
//             },
//           ),
//           SizedBox(height: getH(32)),
//           Padding(
//             padding: EdgeInsets.only(
//               left: getW(16),
//             ),
//             child: Row(
//               children: [
//                 Widgets.cyanContainer(text: "Contracts"),
//                 SizedBox(width: getW(28)),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Invoice",
//                     style: TextStyle(fontSize: getH(15), color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: getH(20)),
//           Widgets.Card(
//             ntitle: "№ 154",
//             height: 21,
//             width: 49,
//             colors: Color(0xff49B7A5),
//             opacity: 0.15,
//             smallTitle: "Paid",
//             smallTitleColor: Color(0xff49B7A5),
//             ismi: "Yoldoshova Ziyoda",
//             amount: "1,200,000 UZS",
//             lastInvoice: "№ 156",
//             number: "6",
//             date: "31.01.2021",
//           ),
//         ],
//       ),