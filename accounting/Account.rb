
class Account
  attr_accessor :balance
  attr_reader :cleared_balance
  protected     :cleared_balance

  def initialize(balance)
    @balance = balance
  end

  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private
  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end

  public
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
end

$acc1 = Account.new(1000)
$acc2 = Account.new(1500)

def print_status
  puts "New transaction on #{Time.now}:"
  puts $acc1.balance
  puts $acc2.balance
end

print_status

trans = Transaction.new($acc2, $acc1)
trans.transfer(100)

print_status
