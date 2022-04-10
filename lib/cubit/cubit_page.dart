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
}
