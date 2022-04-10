import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
          "New invoice",
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
              "Xizmat nomi",
              style: TextStyle(
                fontSize: getH(15),
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
              "Invoice summasi",
              style: TextStyle(
                fontSize: getH(15),
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
              "Status of the invoice",
              style: TextStyle(
                fontSize: getH(15),
                color: const Color(0xffF1F1F1).withOpacity(0.4),
              ),
            ),
            SizedBox(height: getH(10)),
            Widgets.NewContractContainer(widgets: Row()),
          ],
        ),
      ),
    );
  }
}
