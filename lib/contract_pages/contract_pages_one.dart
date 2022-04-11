import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibilling/contract_pages/contracts_pages.dart';
import 'package:ibilling/core/Size_config.dart';
import 'package:ibilling/core/app_bar_pages.dart';
import 'package:ibilling/core/colors.dart';
import 'package:ibilling/core/widgets.dart';
import 'package:ibilling/create_contracts_pages/new_contract_pages.dart';
import 'package:ibilling/cubit/cubit_page.dart';
import 'package:ibilling/cubit/cubit_state_pages.dart';
import 'package:ibilling/history_pages/history_pages.dart';
import 'package:ibilling/profile_pages/profil_pages.dart';
import 'package:ibilling/saved_pages/saved_pages.dart';

class ContractPageOne extends StatelessWidget {
  ContractPageOne({Key? key}) : super(key: key);
  final List pages = [
    const ContractPage(),
    const HistoryPages(),
    const NewContractspages(),
    const SavedPages(),
    const ProfilPage()
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: ((context) => BillingCubit()),
      child: BlocConsumer<BillingCubit,BillingState>(
        builder: (context, state) {
          return Scaffold(
            body: pages[context.watch<BillingCubit>().currrentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: context.watch<BillingCubit>().currrentIndex,
              selectedLabelStyle: const TextStyle(color: Colors.white),
              showSelectedLabels: true,
              fixedColor: Colors.white,
              onTap: (v) {
                context.read<BillingCubit>().pageIndex(v);
              },
              items: [
                BottomNavigationBarItem(
                  label: "Contracts",
                  icon: SvgPicture.asset("assets/images/Document.svg"),
                ),
                BottomNavigationBarItem(
                  label: "History",
                  icon: SvgPicture.asset("assets/images/Time Circle.svg"),
                ),
                BottomNavigationBarItem(
                  label: "New",
                  icon: SvgPicture.asset("assets/images/Plus.svg"),
                ),
                BottomNavigationBarItem(
                  label: "Saved",
                  icon: SvgPicture.asset("assets/images/Bookmark.svg"),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: SvgPicture.asset("assets/images/Profile.svg"),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
