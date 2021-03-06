require 'pry'

class BankAccount

  attr_reader :name
  attr_accessor :balance, :status

  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def valid?
    @status == "open" && balance > 0
  end

  def close_account
    @status = "closed"
  end

  def display_balance
    "Your Balance is $#{@balance}."
  end

  def deposit (amount)
    @balance = @balance + amount
  end

end
