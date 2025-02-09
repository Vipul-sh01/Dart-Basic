class BankAccount {
  late String _accountHolderName; 
  late double _balance; 

  
  BankAccount(String accountHolderName, double initialBalance) {
    _accountHolderName = accountHolderName;
    _balance = (initialBalance > 0) ? initialBalance : 0;
  }

  
  String getAccountHolderName() {
    return _accountHolderName;
  }

  
  void setAccountHolderName(String name) {
    if (name.isNotEmpty) {
      _accountHolderName = name;
    } else {
      print("Name cannot be empty!");
    }
  }

  
  double getBalance() {
    return _balance;
  }

  
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount!");
    }
  }

 
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("insufficient balance!");
    }
  }

  void displayAccountInfo() {
    print("Account Holder: $_accountHolderName");
    print("Balance: \$${_balance.toStringAsFixed(2)}");
  }
}


