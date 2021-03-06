import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';

class MyAppBar extends StatelessWidget {
  String text;
  String filterPage;
  String searchpage;
  MyAppBar({
    Key? key,
    required this.text,
    required this.filterPage,
    required this.searchpage,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff141416),
      centerTitle: false,
      leading: Container(
        height: getH(24),
        width: getW(24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Ellipse 13.png"),
          ),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: getH(20),
          color: Colores.whiteFFFF,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Row(
          children: [
            InkWell(
              child: SvgPicture.asset("assets/images/Filter.svg"),
              onTap: () {
                Navigator.pushNamed(context, "/${filterPage}");
              },
            ),
            SizedBox(width: getW(20)),
            Container(
              height: getH(18),
              width: getW(1),
              color: Colores.whiteFFFF,
            ),
            SizedBox(width: getW(21.25)),
            InkWell(
              child: SvgPicture.asset("assets/images/Group.svg"),
              onTap: () {
                Navigator.pushNamed(context, "/${searchpage}");
              },
            ),
            SizedBox(width: getW(19)),
          ],
        ),
      ],
    );
  }
}
