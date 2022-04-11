import 'package:flutter/material.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colores.whiteFFFF,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          height: getH(65),
          width: getW(220),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "Search by keywords",
              hintStyle: TextStyle(
                fontSize: getH(17),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close, size: 25),
          ),
          SizedBox(
            width: getW(10),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getH(88),
              width: getW(88),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Document.png"),
                ),
              ),
            ),
            SizedBox(height: getH(10)),
            Text(
              'No contracts are made',
              style: TextStyle(fontSize: getH(16), color: Colores.greyColor),
            )
          ],
        ),
      ),
    );
  }
}
