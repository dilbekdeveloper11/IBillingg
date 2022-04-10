import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class NewContractspages extends StatelessWidget {
  const NewContractspages({Key? key}) : super(key: key);

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
          "New Contract",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fase",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(
              widgets: Row(
                children: [
                  SizedBox(
                    width: getW(15),
                  ),
                  Text("salom aleykum"),
                  SizedBox(width: getW(150)),
                  InkWell(
                    child: Container(
                      height: getH(25),
                      width: getW(25),
                      child: SvgPicture.asset(
                        "assets/images/Arrow - Down Circle.svg",
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: getH(18)),
            Text(
              "Fisher’s full name",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(
              widgets: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: getH(18)),
            Text(
              "Address of the organization",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(
              widgets: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: getH(18)),
            Text(
              "INN",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(
              widgets: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: getH(18)),
            Text(
              "Status of the contract",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(widgets: Row()),
            SizedBox(height: getH(34)),
            Widgets.cyanContainer(
              text: "Save contract",
              height: 44,
              width: 343,
              opacity: 1,
              titleColor: Colores.whiteFFFF,
            )
          ],
        ),
      ),
    );
  }
}
