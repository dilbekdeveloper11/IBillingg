import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Container(
          height: getH(35),
          width: getW(32),
          child: Image.asset("assets/images/Paper.png"),
        ),
        title: Text(
          "№ 153",
          style: TextStyle(
            fontSize: getH(18),
            color: Colores.whiteFFFF,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border,
              size: getH(25),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            toolbarHeight: getH(494),
            flexibleSpace: Padding(
              padding: EdgeInsets.only(
                top: getH(20),
                left: getW(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getH(310),
                    width: getW(343),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getH(6),
                      ),
                      color: const Color(0xff2A2A2D),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: getH(14), left: getW(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Widgets.Rows(
                            title1: "Fisher’s full name:",
                            title2: "Yoldosheva Ziyoda",
                          ),
                          SizedBox(height: getH(12)),
                          Widgets.Rows(
                              title1: "Status of the contract:",
                              title2: "Paid"),
                          SizedBox(height: getH(12)),
                          Widgets.Rows(
                              title1: "Amount:", title2: "1,200,000 UZS"),
                          SizedBox(height: getH(12)),
                          Widgets.Rows(
                              title1: "Last invoice:", title2: "№ 156"),
                          SizedBox(height: getH(12)),
                          Widgets.Rows(
                              title1: "Number of invoices:", title2: "6"),
                          SizedBox(height: getH(12)),
                          Container(
                            height: getH(60),
                            width: getW(303),
                            child: const Text(
                              "Address of the organization:   Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
                            ),
                          ),
                          SizedBox(height: getH(12)),
                          Container(
                            height: getH(30),
                            width: getW(303),
                            child: const Text(
                              "ITN/IEC of the organization: 5647520318",
                            ),
                          ),
                          Widgets.Rows(
                            title1: "Created at:",
                            title2: "14:38, 2 February, 2021",
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: getH(20)),
                  Row(
                    children: [
                      Widgets.cyanContainer(
                        text: "Delete contract",
                        height: 40,
                        width: 164,
                        opacity: 0.4,
                        titleColor: const Color(0xffFF426D),
                      ),
                      SizedBox(width: getW(16)),
                      Widgets.cyanContainer(
                        text: "Create contract",
                        height: 40,
                        width: 164,
                        opacity: 1,
                        titleColor: Colores.whiteFFFF,
                      )
                    ],
                  ),
                  SizedBox(height: getH(40)),
                  Container(
                    height: getH(44),
                    width: getW(163),
                    child: Text(
                      "Other contracts with Yoldosheva Feruza",
                      style: TextStyle(
                        fontSize: getH(16),
                        color: Colores.whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: getH(150),
            ),
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
                        ntitle: "№ 154",
                        height: 21,
                        width: 49,
                        colors: const Color(0xff49B7A5),
                        opacity: 0.15,
                        smallTitle: "Paid",
                        smallTitleColor: const Color(0xff49B7A5),
                        ismi: "Yoldoshova Ziyoda",
                        amount: "1,200,000 UZS",
                        lastInvoice: "№ 156",
                        number: "6",
                        date: "31.01.2021",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}