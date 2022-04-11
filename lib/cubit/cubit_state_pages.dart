abstract class BillingState {
  BillingState();
}

class BillingInitial extends BillingState {
  BillingInitial();
}

class BillingChange extends BillingState {
  BillingChange();
}

class BillingFilterChange extends BillingState {
  BillingFilterChange();
}

class BillingSearch extends BillingState {
  BillingSearch();
}
