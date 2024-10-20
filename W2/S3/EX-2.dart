class BankAccount {
    int accID;
    String name;
    double balance;


    BankAccount(this.accID, this.name): balance = 0.0;


    String get Name => name;
    int get AccID => accID;
    double get Balance => balance;

    
    void Withdraw(double amount){
        if(amount > balance){
          throw Exception("Insufficient balance for withdrawal!");
        }
        balance -= amount;
    }
    void Deposit(double amount){
        balance += amount;
    }
}

class Bank {
   String bankName;
   List<BankAccount> accounts;

   Bank(this.bankName) : accounts = [];

   BankAccount createAcc(int accID, String name){
      if (accounts.any((account) => account.accID == accID)) {
      throw Exception('Account ID already exists');
    } else {
      BankAccount account = BankAccount(accID, name);
      accounts.add(account);
      return account;
    }
   }
}

void main() {

  Bank myBank = Bank("CADT Bank");
  BankAccount ronanAccount = myBank.createAcc(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.Deposit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.Withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.Withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAcc(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
