class Account {
  String id;
  String holder;
  double balance;

  Account(this.id, this.holder, this.balance);

  void addFunds(double amount) {
    if (amount > 0) {
      balance += amount;
      print('$holder has Deposited \$${amount.toStringAsFixed(2)} into account $id');
    } else {
      print('$holder has Deposit amount must be positive');
    }
  }

  void withdrawFunds(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('$holder has Withdrew \$${amount.toStringAsFixed(2)} from account $id');
    } else if (amount > balance) {
      print('The value is insufficient');
    } else {
      print('Withdrawal succeed');
    }
  }

  void displayBalance() {
    print('Account $id (Holder: $holder) has a balance of \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  Account mmkAccount = Account('EA241515', 'MOhamed MK', 1000.0);
  Account aliAccount = Account('EA451552', 'Ali SH', 500.0);

  mmkAccount.addFunds(200.0);
  mmkAccount.withdrawFunds(150.0);

  aliAccount.addFunds(100.0);
  aliAccount.withdrawFunds(50.0);

  mmkAccount.displayBalance();
  aliAccount.displayBalance();
}
