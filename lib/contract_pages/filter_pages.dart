import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff141416),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            size: getH(25),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Filters",
          style: TextStyle(
            fontSize: getH(20),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: getH(28),
          left: getW(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Status",
              style: TextStyle(fontSize: getH(16), color: Colores.greyColor),
            ),
            SizedBox(height: getH(18)),
            Row(
              children: [
                Checkbox(
                    value: true,
                    onChanged: (v) {},
                    checkColor: Colors.black,
                    activeColor: Colors.white),
                Text(
                  "Paid",
                  style: TextStyle(
                    fontSize: getH(14),
                    color: Colores.whiteFFFF,
                  ),
                ),
                SizedBox(width: getW(105)),
                Checkbox(value: false, onChanged: (v) {}),
                Text(
                  "Paid",
                  style: TextStyle(
                    fontSize: getH(14),
                    color: Color(0xffA6A6A6),
                  ),
                ),
              ],
            ),
            SizedBox(height: getH(15)),
            Row(
              children: [
                Checkbox(
                    value: false,
                    onChanged: (v) {},
                    checkColor: Colors.black,
                    activeColor: Colors.white),
                Text(
                  "Paid",
                  style: TextStyle(
                    fontSize: getH(14),
                    color: Colores.whiteFFFF,
                  ),
                ),
                SizedBox(width: getW(105)),
                Checkbox(
                  value: false,
                  onChanged: (v) {},
                  checkColor: Colors.black,
                ),
                Text(
                  "Paid",
                  style: TextStyle(
                    fontSize: getH(14),
                    color: Color(0xffA6A6A6),
                  ),
                ),
              ],
            ),
            SizedBox(height: getH(35.5)),
            Text(
              "Date",
              style: TextStyle(fontSize: getH(16), color: Colores.greyColor),
            ),
            SizedBox(height: getH(16)),
            Row(
              children: [
                Widgets.calendarCurrent(context: context),
                SizedBox(width: getW(12)),
                Text(
                  "-",
                  style:
                      TextStyle(fontSize: getH(40), color: Colores.whiteFFFF),
                ),
                SizedBox(width: getW(12)),
                Widgets.calendarCurrent(context: context, title: "To"),
                SizedBox(width: getW(16)),
              ],
            ),
            SizedBox(height: getH(344)),
            Row(
              children: [
                Widgets.cyanContainer(
                  text: "Cancel",
                  height: 40,
                  width: 164,
                  opacity: 0.3,
                  titleColor: const Color(0xff008F7F),
                ),
                SizedBox(width: getW(16)),
                Widgets.cyanContainer(
                    text: "Apply filters",
                    height: 40,
                    width: 164,
                    opacity: 1,
                    titleColor: Colores.whiteFFFF)
              ],
            )
          ],
        ),
      ),
    );
  }
}
