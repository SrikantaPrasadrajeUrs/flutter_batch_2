import 'encapsulation.dart';

void main(List<String> args) {
  Bank bank = Bank();// Set initial balance
  bank.deposit(1000);
  print("Initial balance: \$${bank.balance}");
  bank.withdraw(800);
  print(bank);
  bank.setBalance = (2000, 0);
  print("Updated balance: \$${bank.balance}");
}