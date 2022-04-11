import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/contract_pages/contract_pages_one.dart';
import 'package:ibilling/cubit/cubit_state_pages.dart';
import 'package:ibilling/history_pages/history_pages.dart';

class BillingCubit extends Cubit<BillingState> {
  BillingCubit() : super(BillingInitial());

  int currrentIndex = 0;

  void pageIndex(v) {
    currrentIndex = v;
    emit(BillingChange());
  }

  List values = [false, false, false, false];
  void filterChanged(int index) {
    values[index] = !values[index];
    emit(BillingFilterChange());
  }

  TextEditingController controller = TextEditingController();
  void clear() {
    controller.clear();
    emit(BillingSearch());
  }

  

}
