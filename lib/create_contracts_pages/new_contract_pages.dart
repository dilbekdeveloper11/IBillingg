import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class NewContractspages extends StatelessWidget {
  const NewContractspages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                color: const Color(0xffF1F1F1),
              ),
            ),
            SizedBox(height: getH(6)),
            Widgets.NewContractContainer(
                widgets: Row(
              children: [
                SizedBox(
                  width: getW(15),
                ),
                Text("salom aleykum"),
                Spacer(),
                ExpansionTile(
                  title: Icon(Icons.arrow_drop_down_circle_outlined),
                  initiallyExpanded: true,
                  children: [Text("")],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
