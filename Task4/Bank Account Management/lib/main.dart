class BankAccount {
 
  String accountNumber;
  String accountHolderName;
  double balance;

  
  BankAccount({
    required this.accountNumber,
    required this.accountHolderName,
    this.balance = 0.0,
  });


  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)} into $accountHolderName\'s account.');
    } else {
      print('Invalid deposit amount.');
    }
  }

  
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrew \$${amount.toStringAsFixed(2)} from $accountHolderName\'s account.');
    } else if (amount > balance) {
      print('Insufficient balance for withdrawal.');
    } else {
      print('Invalid withdrawal amount.');
    }
  }

 
  void checkBalance() {
    print('$accountHolderName\'s account balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  
  BankAccount account1 = BankAccount(
    accountNumber: '123456789',
    accountHolderName: 'Bob',
    balance: 500.0,
  );

  BankAccount account2 = BankAccount(
    accountNumber: '987654321',
    accountHolderName: 'MMK',
    balance: 1000.0,
  );

  
  account1.deposit(250.0);
  account1.withdraw(100.0);
  account1.checkBalance();

  account2.deposit(500.0);
  account2.withdraw(1500.0); 
  account2.withdraw(200.0);
  account2.checkBalance();
}
