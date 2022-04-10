import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';

class Widgets {
  static cyanContainer({
    required String text,
    required double height,
    required double width,
    required double opacity,
    required Color titleColor,
  }) {
    return Container(
      height: getH(height),
      width: getW(width),
      decoration: BoxDecoration(
        color: const Color(0xff00A795).withOpacity(opacity),
        borderRadius: BorderRadius.circular(
          getH(6),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: getH(15), color: titleColor),
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
        const Spacer(),
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

  static calendarCurrent({
    required BuildContext context,
    String title = "",
  }) {
    return Container(
      height: getH(40),
      width: getW(142),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(10),
        ),
        color: Color(0xff2A2A2D),
      ),
      child: Row(
        children: [
          SizedBox(width: getH(8)),
          Text(
            title,
            style: TextStyle(fontSize: getH(15), color: Colores.greyColor),
          ),
          SizedBox(width: getH(8)),
          Text(
            "16.02.2021",
            style: TextStyle(fontSize: getH(15), color: Colores.greyColor),
          ),
          SizedBox(width: getH(8)),
          InkWell(
            child: Icon(
              Icons.calendar_month,
              color: Colores.greyColor,
            ),
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime(DateTime.now().year),
                firstDate: DateTime(2022),
                lastDate: DateTime(2024),
              );
            },
          )
        ],
      ),
    );
  }

  static NewContractContainer({required Widget widgets}) {
    return Container(
      height: getH(44),
      width: getW(343),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(4),
        ),
        border: Border.all(
          color: const Color(0xffF1F1F1).withOpacity(0.4),
        ),
      ),
      child: widgets,
    );
  }
}
