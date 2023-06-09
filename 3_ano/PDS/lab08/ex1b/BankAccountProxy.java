// Author: Rafael Pinto, 103379, p5_09

public class BankAccountProxy implements BankAccount {
    private BankAccountImpl bankAccount;

    BankAccountProxy(String bank, double initialDeposit) {
        this.bankAccount = new BankAccountImpl(bank, initialDeposit);
    }

    public String getBank() {
        return bankAccount.getBank();
    }

    @Override
    public void deposit(double amount) {
        bankAccount.deposit(amount);
    }

    /*
     * This method is only available to the owner of the bank account.
     */
    @Override
    public boolean withdraw(double amount) {
        if (Company.user == User.OWNER){
            return bankAccount.withdraw(amount);
        }
        return false;
    }

    /*
     * This method is only available to the owner of the bank account.
     */
    @Override
    public double balance() {
        if (Company.user == User.OWNER){
            return bankAccount.balance();
        }
        return 0;
    }
}
