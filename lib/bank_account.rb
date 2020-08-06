require 'pry'

class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    @@all =[]


    def initialize(name_arg)
        @name= name_arg
        @balance = 1000
        @status= "open"
        @@all << self

    end


    def self.all
        @@all
    end

    def deposit(amount_dep)
    self.balance=@balance + amount_dep
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end

    def valid?
   self.status=="open" && self.balance > 0
    end

    def close_account
    self.status ="closed"
    end


end
