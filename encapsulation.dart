class Bank{
  // 
  double _balance = 0.0;

  Bank();
  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit amount must be positive");
    }
  _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Withdrawal amount must be positive");
    }
    if (amount > _balance) {
      throw StateError("Insufficient funds");
    }
    _balance -= amount;
  }
  // accessors modifier
  // getter and setter
  double get balance {
    _balance*=2;
    return _balance;
  }

  void set setBalance((double,double) amount) {
    if(amount.$1<0){
      throw ArgumentError("Balance cannot be negative");
    }
    _balance = amount.$1;
  }

  @override
  String toString() {
    return "Bank __balance: \$${_balance}";
  }
}