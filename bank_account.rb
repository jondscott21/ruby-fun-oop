
class BankAccount
  attr_accessor :account_number, :checking_balance, :savings_balance
  def initialize
    @account_number = make_account_number
    @checking_balance = 100
    @savings_balance = 200
    @interest_rate = 0.01
  end
  def BankAccount.number_of_accounts
    puts ObjectSpace.each_object(BankAccount).count
    self
  end
######## ACCOUNT INFO ########
  def display_account_number
    puts @account_number
    self
  end
  def all_info
    self.display_account_number
    self.display_checking_balance
    self.display_savings_balance
    self.total_holdings
    puts "Current interest rate: #{@interest_rate}"
    self
  end
######## ACCOUNT BALANCES ########
  def display_checking_balance
    puts "$#{@checking_balance} in your checking account"
    self
  end
  def display_savings_balance
    puts "$#{@savings_balance} in your savings account"
    self
  end
  def total_holdings
    total = @savings_balance + @checking_balance
    puts "Your checking and savings combined total is $#{total}"
    self
  end
######## DEPOSITS ########
  def deposit_checking(value)
    # (@checking_balance += value) -= @interest_rate
    self
  end
  def deposit_savings(value)
    @savings_balance += value
    @savings_balance -= @interest_rate
    self
  end
######## WITHDRAWALS ########
  def withdraw_checking(value)
    if (@checking_balance - value) < 0
      puts "Insufficient funds! Only $#{@checking_balance} left in your checking account"
    else @checking_balance -= value
      puts "$#{@checking_balance}0 left in your checking account"
    end
    self
  end
  def withdraw_savings(value)
    if (@savings_balance - value) < 0
      puts "Insufficient funds! Only $#{@savings_balance} left in your savings account"
    else @savings_balance -= value
      puts "$#{@savings_balance}0 left in your savings account"
    end
    self
  end
  private
  def make_account_number
    Random.new.rand(10000000..99999999)
  end
end
bank = BankAccount.new
bank.all_info
BankAccount.number_of_accounts
