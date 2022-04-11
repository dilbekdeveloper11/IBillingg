import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';
import 'package:ibilling/cubit/cubit_page.dart';
import 'package:ibilling/cubit/cubit_state_pages.dart';

class NewContractspages extends StatelessWidget {
  NewContractspages({Key? key}) : super(key: key);

  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: ((context) => BillingCubit()),
      child: BlocConsumer<BillingCubit, BillingState>(
          builder: (context, state) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
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
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: getH(20), left: getW(16)),
                  child: Form(
                    key: formkey,
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
                          widgets: TextFormField(
                            controller:
                                context.watch<BillingCubit>().faceContoller,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (context
                                  .watch<BillingCubit>()
                                  .faceContoller
                                  .text
                                  .isEmpty) {
                                return "Kerakli ma'lumot kiritilmadi";
                              }
                            },
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
                            controller: context
                                .watch<BillingCubit>()
                                .fullNameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (context
                                  .watch<BillingCubit>()
                                  .fullNameController
                                  .text
                                  .isEmpty) {
                                return "Kerakli ma'lumot kiritilmadi";
                              }
                            },
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
                            controller:
                                context.watch<BillingCubit>().adressController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (context
                                  .watch<BillingCubit>()
                                  .adressController
                                  .text
                                  .isEmpty) {
                                return "Kerakli ma'lumot kiritilmadi";
                              }
                            },
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
                            controller:
                                context.watch<BillingCubit>().iNNContoller,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (context
                                  .watch<BillingCubit>()
                                  .iNNContoller
                                  .text
                                  .isEmpty) {
                                return "Kerakli ma'lumot kiritilmadi";
                              }
                            },
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
                        Widgets.NewContractContainer(
                          widgets: TextFormField(
                            controller:
                                context.watch<BillingCubit>().statusController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (context
                                  .watch<BillingCubit>()
                                  .statusController
                                  .text
                                  .isEmpty) {
                                return "Kerakli ma'lumot kiritilmadi";
                              }
                            },
                          ),
                        ),
                        SizedBox(height: getH(34)),
                        InkWell(
                          child: Widgets.cyanContainer(
                            text: "Save contract",
                            height: 44,
                            width: 343,
                            opacity: 1,
                            titleColor: Colores.whiteFFFF,
                          ),
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  "Ma'lumotlar qabul qilindi",
                                  style: TextStyle(
                                    fontSize: getH(20),
                                    color: Colores.whiteFFFF,
                                  ),
                                ),
                                backgroundColor: Colors.green,
                              ));
                            }
                          },
                        ),
                      ],
                    ),
                    onChanged: () {},
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
