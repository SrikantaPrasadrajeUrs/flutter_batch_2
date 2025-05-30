class Bank{
  // 
  static String bankCountry = "Inida";

  static const double percentage = .7;
  
  double _balance = 0.0;

  Bank();

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit amount must be positive");
    }
  _balance += amount*percentage;
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
  // void dynamic, in double, string, int
  static message()=>print("Welcome to the Bank!");

  @override
  String toString() {
    return "Bank __balance: \$${_balance}";
  }
}

void main(List<String> args) {
  final bank1  = Bank(); // Set initial balance
    final bank3  = Bank();
      final bank2  = Bank();
      //className.variableName

  print("Bank Country: ${Bank.bankCountry}");
  print("Bank 3 Country: ${Bank.bankCountry}");
  print("Bank 1 Country: ${Bank.bankCountry}");

  Bank.message();
  
}