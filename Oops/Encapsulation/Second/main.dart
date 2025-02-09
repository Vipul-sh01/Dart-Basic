import 'Encapsulation1.dart';
void main() {
  var account = BankAccount("Vipul", 500.0);

  account.displayAccountInfo();
  account.deposit(200);
  account.withdraw(100);
  account.displayAccountInfo();
}