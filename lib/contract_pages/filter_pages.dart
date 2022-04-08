import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';

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
        leading: Icon(
          Icons.arrow_back,
          size: getH(25),
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
                Container(
                  height: getH(37),
                  width: getW(116),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getH(10),
                    ),
                    color: Color(0xff2A2A2D),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
