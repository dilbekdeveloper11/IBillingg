import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff141416),
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
          "Profile",
          style: TextStyle(
            fontSize: getH(20),
            color: Colores.whiteFFFF,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: getH(20), left: getW(16)),
        child: Column(
          children: [
            Container(
              height: getH(188.11),
              width: getW(343),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getH(6),
                ),
                color: const Color(0xff2A2A2D),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: getH(20), left: getW(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: getH(22),
                          backgroundColor: const Color(0xff00A795),
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: getH(35),
                          ),
                        ),
                        SizedBox(width: getW(16)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Otabek Abdushukurov",
                              style: TextStyle(
                                fontSize: getH(16),
                                color: const Color(0xff00A795),
                              ),
                            ),
                            SizedBox(height: getH(6)),
                            Text(
                              "Graphic designer • IQ Education",
                              style: TextStyle(
                                fontSize: getH(12),
                                color: const Color(0xffE7E7E7),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: getH(24)),
                    Widgets.Rows(
                        title1: "Date of birth:", title2: "16.09.2001"),
                    SizedBox(height: getH(12)),
                    Widgets.Rows(
                        title1: "Phone number:", title2: "+998 97 721 06 88"),
                    SizedBox(height: getH(12)),
                    Widgets.Rows(
                        title1: "E-mail:",
                        title2: "predatorhunter041@gmail.com")
                  ],
                ),
              ),
            ),
            SizedBox(height: getH(12)),
            Container(
              height: getH(44),
              width: getW(343),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getH(6)),
                color: const Color(0xff2A2A2D),
              ),
            )
          ],
        ),
      ),
    );
  }
}