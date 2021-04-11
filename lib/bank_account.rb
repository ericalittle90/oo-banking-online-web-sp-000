class BankAccount

  attr_accessor :balance, :status
  attr_reader :transfer, :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(cash)
    self.balance += cash
  end

  def display_balance
    self.balance
  end

end
