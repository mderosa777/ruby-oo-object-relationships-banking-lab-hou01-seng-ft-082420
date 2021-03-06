class BankAccount
     attr_accessor :status, :balance
     attr_reader :name
     

    def initialize(name,status="open",balance=1000)
        @name = name
        @balance = 1000
        @status = status
    end

    def deposit(amount)
        self.balance += amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
         (self.balance > 0) && (self.status == "open")
    end

    def close_account
        self.status = "closed"
    end
end
